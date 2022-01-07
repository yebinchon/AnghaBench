
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_card {int list; } ;


 int ap_list_lock ;
 int kfree (struct ap_card*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_card* to_ap_card (struct device*) ;

__attribute__((used)) static void ap_card_device_release(struct device *dev)
{
 struct ap_card *ac = to_ap_card(dev);

 if (!list_empty(&ac->list)) {
  spin_lock_bh(&ap_list_lock);
  list_del_init(&ac->list);
  spin_unlock_bh(&ap_list_lock);
 }
 kfree(ac);
}
