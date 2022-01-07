
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_cxt {int rx_free_list; int free_list_lock; int submit_list_lock; int to_host_lock; int rx_submit_list; int to_host_list; } ;
struct mux_rx {int free_list; } ;
struct mux_dev {int work_rx; int write_lock; struct rx_cxt rx; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_ISSUE_NUM ;
 struct mux_rx* alloc_mux_rx () ;
 int do_rx ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int init_usb(struct mux_dev *mux_dev)
{
 struct mux_rx *r;
 struct rx_cxt *rx = &mux_dev->rx;
 int ret = 0;
 int i;

 spin_lock_init(&mux_dev->write_lock);
 INIT_LIST_HEAD(&rx->to_host_list);
 INIT_LIST_HEAD(&rx->rx_submit_list);
 INIT_LIST_HEAD(&rx->rx_free_list);
 spin_lock_init(&rx->to_host_lock);
 spin_lock_init(&rx->submit_list_lock);
 spin_lock_init(&rx->free_list_lock);

 for (i = 0; i < MAX_ISSUE_NUM * 2; i++) {
  r = alloc_mux_rx();
  if (!r) {
   ret = -ENOMEM;
   break;
  }

  list_add(&r->free_list, &rx->rx_free_list);
 }

 INIT_DELAYED_WORK(&mux_dev->work_rx, do_rx);

 return ret;
}
