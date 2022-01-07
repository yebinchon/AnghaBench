
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct tcmu_dev {int qfull_time_out; struct se_device se_dev; int data_blocks; int cmd_timer; int qfull_timer; int commands; int inflight_queue; int qfull_queue; int timedout_entry; int node; int cmdr_lock; int max_blocks; int cmd_time_out; struct se_hba* hba; int name; int kref; } ;
struct se_hba {int dummy; } ;


 int DATA_BLOCK_BITS_DEF ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int TCMU_TIME_OUT ;
 int idr_init (int *) ;
 int kfree (struct tcmu_dev*) ;
 int kref_init (int *) ;
 int kstrdup (char const*,int ) ;
 struct tcmu_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int tcmu_cmd_timedout ;
 int tcmu_qfull_timedout ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct se_device *tcmu_alloc_device(struct se_hba *hba, const char *name)
{
 struct tcmu_dev *udev;

 udev = kzalloc(sizeof(struct tcmu_dev), GFP_KERNEL);
 if (!udev)
  return ((void*)0);
 kref_init(&udev->kref);

 udev->name = kstrdup(name, GFP_KERNEL);
 if (!udev->name) {
  kfree(udev);
  return ((void*)0);
 }

 udev->hba = hba;
 udev->cmd_time_out = TCMU_TIME_OUT;
 udev->qfull_time_out = -1;

 udev->max_blocks = DATA_BLOCK_BITS_DEF;
 mutex_init(&udev->cmdr_lock);

 INIT_LIST_HEAD(&udev->node);
 INIT_LIST_HEAD(&udev->timedout_entry);
 INIT_LIST_HEAD(&udev->qfull_queue);
 INIT_LIST_HEAD(&udev->inflight_queue);
 idr_init(&udev->commands);

 timer_setup(&udev->qfull_timer, tcmu_qfull_timedout, 0);
 timer_setup(&udev->cmd_timer, tcmu_cmd_timedout, 0);

 INIT_RADIX_TREE(&udev->data_blocks, GFP_KERNEL);

 return &udev->se_dev;
}
