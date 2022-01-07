
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx_sdu {int list; } ;
struct usb_rx {int free_list; } ;
struct tx_cxt {scalar_t__ avail_count; int free_list; int lock; int hci_list; int sdu_list; } ;
struct rx_cxt {scalar_t__ avail_count; int free_list; int to_host_lock; int submit_lock; int rx_lock; int to_host_list; int rx_submit_list; } ;
struct lte_udev {int send_complete; int work_rx; int work_tx; int * rx_cb; int usb_state; scalar_t__ request_mac_addr; scalar_t__ tx_stop; struct rx_cxt rx; struct tx_cxt tx; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_NUM_SDU_BUF ;
 int MAX_RX_SUBMIT_COUNT ;
 int PM_NORMAL ;
 struct usb_rx* alloc_rx_struct () ;
 struct usb_tx_sdu* alloc_tx_sdu_struct () ;
 int do_rx ;
 int do_tx ;
 int list_add (int *,int *) ;
 int release_usb (struct lte_udev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int init_usb(struct lte_udev *udev)
{
 int ret = 0;
 int i;
 struct tx_cxt *tx = &udev->tx;
 struct rx_cxt *rx = &udev->rx;
 struct usb_tx_sdu *t_sdu = ((void*)0);
 struct usb_rx *r = ((void*)0);

 udev->send_complete = 1;
 udev->tx_stop = 0;
 udev->request_mac_addr = 0;
 udev->usb_state = PM_NORMAL;

 INIT_LIST_HEAD(&tx->sdu_list);
 INIT_LIST_HEAD(&tx->hci_list);
 INIT_LIST_HEAD(&tx->free_list);
 INIT_LIST_HEAD(&rx->rx_submit_list);
 INIT_LIST_HEAD(&rx->free_list);
 INIT_LIST_HEAD(&rx->to_host_list);
 spin_lock_init(&tx->lock);
 spin_lock_init(&rx->rx_lock);
 spin_lock_init(&rx->submit_lock);
 spin_lock_init(&rx->to_host_lock);

 tx->avail_count = 0;
 rx->avail_count = 0;

 udev->rx_cb = ((void*)0);

 for (i = 0; i < MAX_NUM_SDU_BUF; i++) {
  t_sdu = alloc_tx_sdu_struct();
  if (!t_sdu) {
   ret = -ENOMEM;
   goto fail;
  }

  list_add(&t_sdu->list, &tx->free_list);
  tx->avail_count++;
 }

 for (i = 0; i < MAX_RX_SUBMIT_COUNT * 2; i++) {
  r = alloc_rx_struct();
  if (!r) {
   ret = -ENOMEM;
   goto fail;
  }

  list_add(&r->free_list, &rx->free_list);
  rx->avail_count++;
 }
 INIT_DELAYED_WORK(&udev->work_tx, do_tx);
 INIT_DELAYED_WORK(&udev->work_rx, do_rx);
 return 0;
fail:
 release_usb(udev);
 return ret;
}
