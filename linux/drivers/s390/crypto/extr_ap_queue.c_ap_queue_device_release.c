
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_queue {int list; } ;


 int ap_list_lock ;
 int kfree (struct ap_queue*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static void ap_queue_device_release(struct device *dev)
{
 struct ap_queue *aq = to_ap_queue(dev);

 if (!list_empty(&aq->list)) {
  spin_lock_bh(&ap_list_lock);
  list_del_init(&aq->list);
  spin_unlock_bh(&ap_list_lock);
 }
 kfree(aq);
}
