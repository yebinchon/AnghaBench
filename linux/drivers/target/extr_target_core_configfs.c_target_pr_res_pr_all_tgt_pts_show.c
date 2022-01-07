
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int dev_reservation_lock; TYPE_1__* dev_pr_res_holder; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ pr_reg_all_tg_pt; } ;


 struct se_device* pr_to_dev (struct config_item*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t target_pr_res_pr_all_tgt_pts_show(struct config_item *item,
  char *page)
{
 struct se_device *dev = pr_to_dev(item);
 ssize_t len = 0;

 spin_lock(&dev->dev_reservation_lock);
 if (!dev->dev_pr_res_holder) {
  len = sprintf(page, "No SPC-3 Reservation holder\n");
 } else if (dev->dev_pr_res_holder->pr_reg_all_tg_pt) {
  len = sprintf(page, "SPC-3 Reservation: All Target"
   " Ports registration\n");
 } else {
  len = sprintf(page, "SPC-3 Reservation: Single"
   " Target Port registration\n");
 }

 spin_unlock(&dev->dev_reservation_lock);
 return len;
}
