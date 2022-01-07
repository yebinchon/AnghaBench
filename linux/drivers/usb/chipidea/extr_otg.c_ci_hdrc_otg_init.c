
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dev; int wq; int work; } ;


 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int ci_hdrc_otg_fsm_init (struct ci_hdrc*) ;
 scalar_t__ ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int ci_otg_work ;
 int create_freezable_workqueue (char*) ;
 int dev_err (int ,char*) ;

int ci_hdrc_otg_init(struct ci_hdrc *ci)
{
 INIT_WORK(&ci->work, ci_otg_work);
 ci->wq = create_freezable_workqueue("ci_otg");
 if (!ci->wq) {
  dev_err(ci->dev, "can't create workqueue\n");
  return -ENODEV;
 }

 if (ci_otg_is_fsm_mode(ci))
  return ci_hdrc_otg_fsm_init(ci);

 return 0;
}
