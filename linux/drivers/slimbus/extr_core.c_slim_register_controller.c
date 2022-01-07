
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pause_comp; int m_reconf; } ;
struct slim_controller {int id; int dev; int name; int txn_lock; TYPE_1__ sched; int lock; int tid_idr; int laddr_ida; scalar_t__ max_cg; scalar_t__ min_cg; } ;


 int GFP_KERNEL ;
 scalar_t__ SLIM_MAX_CLK_GEAR ;
 scalar_t__ SLIM_MIN_CLK_GEAR ;
 int ctrl_ida ;
 int dev_dbg (int ,char*,int ,int ) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int idr_init (int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int of_register_slim_devices (struct slim_controller*) ;
 int spin_lock_init (int *) ;

int slim_register_controller(struct slim_controller *ctrl)
{
 int id;

 id = ida_simple_get(&ctrl_ida, 0, 0, GFP_KERNEL);
 if (id < 0)
  return id;

 ctrl->id = id;

 if (!ctrl->min_cg)
  ctrl->min_cg = SLIM_MIN_CLK_GEAR;
 if (!ctrl->max_cg)
  ctrl->max_cg = SLIM_MAX_CLK_GEAR;

 ida_init(&ctrl->laddr_ida);
 idr_init(&ctrl->tid_idr);
 mutex_init(&ctrl->lock);
 mutex_init(&ctrl->sched.m_reconf);
 init_completion(&ctrl->sched.pause_comp);
 spin_lock_init(&ctrl->txn_lock);

 dev_dbg(ctrl->dev, "Bus [%s] registered:dev:%p\n",
  ctrl->name, ctrl->dev);

 of_register_slim_devices(ctrl);

 return 0;
}
