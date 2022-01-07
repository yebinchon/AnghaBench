
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx_sdu {int list; } ;
struct tx_cxt {int avail_count; int free_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void put_tx_struct(struct tx_cxt *tx, struct usb_tx_sdu *t_sdu)
{
 list_add_tail(&t_sdu->list, &tx->free_list);
 tx->avail_count++;
}
