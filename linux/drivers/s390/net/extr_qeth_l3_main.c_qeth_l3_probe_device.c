
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_card {int rx_mode_work; int ip_mc_htable; int cmd_wq; int ip_lock; int ip_htable; } ;
struct TYPE_4__ {int * type; } ;
struct ccwgroup_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int destroy_workqueue (int ) ;
 struct qeth_card* dev_get_drvdata (TYPE_1__*) ;
 int dev_name (TYPE_1__*) ;
 int hash_init (int ) ;
 int mutex_init (int *) ;
 int qeth_generic_devtype ;
 int qeth_l3_create_device_attributes (TYPE_1__*) ;
 int qeth_l3_rx_mode_work ;

__attribute__((used)) static int qeth_l3_probe_device(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc;

 hash_init(card->ip_htable);
 mutex_init(&card->ip_lock);
 card->cmd_wq = alloc_ordered_workqueue("%s_cmd", 0,
            dev_name(&gdev->dev));
 if (!card->cmd_wq)
  return -ENOMEM;

 if (gdev->dev.type == &qeth_generic_devtype) {
  rc = qeth_l3_create_device_attributes(&gdev->dev);
  if (rc) {
   destroy_workqueue(card->cmd_wq);
   return rc;
  }
 }

 hash_init(card->ip_mc_htable);
 INIT_WORK(&card->rx_mode_work, qeth_l3_rx_mode_work);
 return 0;
}
