
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc {int cfg_event; scalar_t__ quit; } ;
struct rxq_entry_t {int buffer_size; int * buffer; } ;


 int complete (int *) ;
 int kfree (struct rxq_entry_t*) ;
 int wilc_wlan_handle_rx_buff (struct wilc*,int *,int) ;
 struct rxq_entry_t* wilc_wlan_rxq_remove (struct wilc*) ;

__attribute__((used)) static void wilc_wlan_handle_rxq(struct wilc *wilc)
{
 int size;
 u8 *buffer;
 struct rxq_entry_t *rqe;

 do {
  if (wilc->quit) {
   complete(&wilc->cfg_event);
   break;
  }
  rqe = wilc_wlan_rxq_remove(wilc);
  if (!rqe)
   break;

  buffer = rqe->buffer;
  size = rqe->buffer_size;
  wilc_wlan_handle_rx_buff(wilc, buffer, size);

  kfree(rqe);
 } while (1);
}
