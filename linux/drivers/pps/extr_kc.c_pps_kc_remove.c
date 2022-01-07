
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int dev; } ;


 int dev_info (int ,char*) ;
 struct pps_device* pps_kc_hardpps_dev ;
 int pps_kc_hardpps_lock ;
 scalar_t__ pps_kc_hardpps_mode ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pps_kc_remove(struct pps_device *pps)
{
 spin_lock_irq(&pps_kc_hardpps_lock);
 if (pps == pps_kc_hardpps_dev) {
  pps_kc_hardpps_mode = 0;
  pps_kc_hardpps_dev = ((void*)0);
  spin_unlock_irq(&pps_kc_hardpps_lock);
  dev_info(pps->dev, "unbound kernel consumer"
    " on device removal\n");
 } else
  spin_unlock_irq(&pps_kc_hardpps_lock);
}
