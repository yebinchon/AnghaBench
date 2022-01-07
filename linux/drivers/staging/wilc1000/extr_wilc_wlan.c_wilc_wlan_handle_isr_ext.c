
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wilc {int rx_buffer_offset; TYPE_1__* hif_func; int * rx_buffer; } ;
struct rxq_entry_t {int buffer_size; int * buffer; } ;
struct TYPE_2__ {int (* hif_block_rx_ext ) (struct wilc*,int ,int *,int) ;int (* hif_clear_int_ext ) (struct wilc*,int) ;int (* hif_read_size ) (struct wilc*,int*) ;} ;


 int DATA_INT_CLR ;
 int ENABLE_RX_VMM ;
 int GFP_KERNEL ;
 int WILC_RX_BUFF_SIZE ;
 struct rxq_entry_t* kmalloc (int,int ) ;
 int stub1 (struct wilc*,int*) ;
 int stub2 (struct wilc*,int) ;
 int stub3 (struct wilc*,int ,int *,int) ;
 int wilc_wlan_handle_rxq (struct wilc*) ;
 int wilc_wlan_rxq_add (struct wilc*,struct rxq_entry_t*) ;

__attribute__((used)) static void wilc_wlan_handle_isr_ext(struct wilc *wilc, u32 int_status)
{
 u32 offset = wilc->rx_buffer_offset;
 u8 *buffer = ((void*)0);
 u32 size;
 u32 retries = 0;
 int ret = 0;
 struct rxq_entry_t *rqe;

 size = (int_status & 0x7fff) << 2;

 while (!size && retries < 10) {
  wilc->hif_func->hif_read_size(wilc, &size);
  size = (size & 0x7fff) << 2;
  retries++;
 }

 if (size <= 0)
  return;

 if (WILC_RX_BUFF_SIZE - offset < size)
  offset = 0;

 buffer = &wilc->rx_buffer[offset];

 wilc->hif_func->hif_clear_int_ext(wilc, DATA_INT_CLR | ENABLE_RX_VMM);
 ret = wilc->hif_func->hif_block_rx_ext(wilc, 0, buffer, size);
 if (!ret)
  return;

 offset += size;
 wilc->rx_buffer_offset = offset;
 rqe = kmalloc(sizeof(*rqe), GFP_KERNEL);
 if (!rqe)
  return;

 rqe->buffer = buffer;
 rqe->buffer_size = size;
 wilc_wlan_rxq_add(wilc, rqe);
 wilc_wlan_handle_rxq(wilc);
}
