
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int dev; } ;
struct pps_bind_args {scalar_t__ edge; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 struct pps_device* pps_kc_hardpps_dev ;
 int pps_kc_hardpps_lock ;
 scalar_t__ pps_kc_hardpps_mode ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int pps_kc_bind(struct pps_device *pps, struct pps_bind_args *bind_args)
{

 spin_lock_irq(&pps_kc_hardpps_lock);

 if (bind_args->edge == 0)
  if (pps_kc_hardpps_dev == pps) {
   pps_kc_hardpps_mode = 0;
   pps_kc_hardpps_dev = ((void*)0);
   spin_unlock_irq(&pps_kc_hardpps_lock);
   dev_info(pps->dev, "unbound kernel"
     " consumer\n");
  } else {
   spin_unlock_irq(&pps_kc_hardpps_lock);
   dev_err(pps->dev, "selected kernel consumer"
     " is not bound\n");
   return -EINVAL;
  }
 else
  if (pps_kc_hardpps_dev == ((void*)0) ||
    pps_kc_hardpps_dev == pps) {
   pps_kc_hardpps_mode = bind_args->edge;
   pps_kc_hardpps_dev = pps;
   spin_unlock_irq(&pps_kc_hardpps_lock);
   dev_info(pps->dev, "bound kernel consumer: "
    "edge=0x%x\n", bind_args->edge);
  } else {
   spin_unlock_irq(&pps_kc_hardpps_lock);
   dev_err(pps->dev, "another kernel consumer"
     " is already bound\n");
   return -EINVAL;
  }

 return 0;
}
