
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dev_reservation_flags; scalar_t__ dev_res_bin_isid; int * reservation_holder; } ;


 int DRF_SPC2_RESERVATIONS ;
 int DRF_SPC2_RESERVATIONS_WITH_ISID ;

void target_release_reservation(struct se_device *dev)
{
 dev->reservation_holder = ((void*)0);
 dev->dev_reservation_flags &= ~DRF_SPC2_RESERVATIONS;
 if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS_WITH_ISID) {
  dev->dev_res_bin_isid = 0;
  dev->dev_reservation_flags &= ~DRF_SPC2_RESERVATIONS_WITH_ISID;
 }
}
