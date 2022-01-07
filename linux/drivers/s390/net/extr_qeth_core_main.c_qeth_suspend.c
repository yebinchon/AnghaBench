
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* discipline; int wait_q; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;
struct TYPE_2__ {int (* set_offline ) (struct ccwgroup_device*) ;} ;


 scalar_t__ CCWGROUP_OFFLINE ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,int) ;
 int stub1 (struct ccwgroup_device*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int qeth_suspend(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);

 qeth_set_allowed_threads(card, 0, 1);
 wait_event(card->wait_q, qeth_threads_running(card, 0xffffffff) == 0);
 if (gdev->state == CCWGROUP_OFFLINE)
  return 0;

 card->discipline->set_offline(gdev);
 return 0;
}
