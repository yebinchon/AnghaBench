
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fcoe_sysfs_function_template {int dummy; } ;
struct TYPE_3__ {int * type; int * bus; struct device* parent; } ;
struct fcoe_ctlr_device {int id; int * work_q; int * devloss_work_q; TYPE_1__ dev; int devloss_work_q_name; int work_q_name; int fcf_dev_loss_tmo; int lock; int fcfs; int mode; struct fcoe_sysfs_function_template* f; } ;
struct device {int dummy; } ;


 int FIP_CONN_TYPE_FABRIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc_return (int *) ;
 void* create_singlethread_workqueue (int ) ;
 int ctlr_num ;
 int destroy_workqueue (int *) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 int fcoe_bus_type ;
 int fcoe_ctlr_device_type ;
 int fcoe_fcf_dev_loss_tmo ;
 int kfree (struct fcoe_ctlr_device*) ;
 struct fcoe_ctlr_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,int) ;

struct fcoe_ctlr_device *fcoe_ctlr_device_add(struct device *parent,
        struct fcoe_sysfs_function_template *f,
        int priv_size)
{
 struct fcoe_ctlr_device *ctlr;
 int error = 0;

 ctlr = kzalloc(sizeof(struct fcoe_ctlr_device) + priv_size,
         GFP_KERNEL);
 if (!ctlr)
  goto out;

 ctlr->id = atomic_inc_return(&ctlr_num) - 1;
 ctlr->f = f;
 ctlr->mode = FIP_CONN_TYPE_FABRIC;
 INIT_LIST_HEAD(&ctlr->fcfs);
 mutex_init(&ctlr->lock);
 ctlr->dev.parent = parent;
 ctlr->dev.bus = &fcoe_bus_type;
 ctlr->dev.type = &fcoe_ctlr_device_type;

 ctlr->fcf_dev_loss_tmo = fcoe_fcf_dev_loss_tmo;

 snprintf(ctlr->work_q_name, sizeof(ctlr->work_q_name),
   "ctlr_wq_%d", ctlr->id);
 ctlr->work_q = create_singlethread_workqueue(
  ctlr->work_q_name);
 if (!ctlr->work_q)
  goto out_del;

 snprintf(ctlr->devloss_work_q_name,
   sizeof(ctlr->devloss_work_q_name),
   "ctlr_dl_wq_%d", ctlr->id);
 ctlr->devloss_work_q = create_singlethread_workqueue(
  ctlr->devloss_work_q_name);
 if (!ctlr->devloss_work_q)
  goto out_del_q;

 dev_set_name(&ctlr->dev, "ctlr_%d", ctlr->id);
 error = device_register(&ctlr->dev);
 if (error)
  goto out_del_q2;

 return ctlr;

out_del_q2:
 destroy_workqueue(ctlr->devloss_work_q);
 ctlr->devloss_work_q = ((void*)0);
out_del_q:
 destroy_workqueue(ctlr->work_q);
 ctlr->work_q = ((void*)0);
out_del:
 kfree(ctlr);
out:
 return ((void*)0);
}
