
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int emulate_pr; } ;
struct se_device {int dev_reservation_flags; int dev_reservation_lock; TYPE_2__* transport; TYPE_1__ dev_attrib; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int transport_flags; } ;


 int DRF_SPC2_RESERVATIONS ;
 int TRANSPORT_FLAG_PASSTHROUGH_PGR ;
 struct se_device* pr_to_dev (struct config_item*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*) ;
 int target_core_dev_pr_show_spc2_res (struct se_device*,char*) ;
 int target_core_dev_pr_show_spc3_res (struct se_device*,char*) ;

__attribute__((used)) static ssize_t target_pr_res_holder_show(struct config_item *item, char *page)
{
 struct se_device *dev = pr_to_dev(item);
 int ret;

 if (!dev->dev_attrib.emulate_pr)
  return sprintf(page, "SPC_RESERVATIONS_DISABLED\n");

 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_PGR)
  return sprintf(page, "Passthrough\n");

 spin_lock(&dev->dev_reservation_lock);
 if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
  ret = target_core_dev_pr_show_spc2_res(dev, page);
 else
  ret = target_core_dev_pr_show_spc3_res(dev, page);
 spin_unlock(&dev->dev_reservation_lock);
 return ret;
}
