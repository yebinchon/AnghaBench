
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {int dev; int close_dev_work; int wait_q; } ;
struct TYPE_3__ {int * type; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int cancel_work_sync (int *) ;
 struct qeth_card* dev_get_drvdata (TYPE_1__*) ;
 int qeth_generic_devtype ;
 int qeth_l2_remove_device_attributes (TYPE_1__*) ;
 int qeth_l2_set_offline (struct ccwgroup_device*) ;
 scalar_t__ qeth_netdev_is_registered (int ) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,int) ;
 int unregister_netdev (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void qeth_l2_remove_device(struct ccwgroup_device *cgdev)
{
 struct qeth_card *card = dev_get_drvdata(&cgdev->dev);

 if (cgdev->dev.type == &qeth_generic_devtype)
  qeth_l2_remove_device_attributes(&cgdev->dev);
 qeth_set_allowed_threads(card, 0, 1);
 wait_event(card->wait_q, qeth_threads_running(card, 0xffffffff) == 0);

 if (cgdev->state == CCWGROUP_ONLINE)
  qeth_l2_set_offline(cgdev);

 cancel_work_sync(&card->close_dev_work);
 if (qeth_netdev_is_registered(card->dev))
  unregister_netdev(card->dev);
}
