
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {int irq_pending; int state; struct ccw_device* ccwdev; } ;
struct ccw_device {int handler; } ;


 int CH_STATE_DOWN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int atomic_set (int *,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int qeth_irq ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void qeth_setup_channel(struct qeth_channel *channel)
{
 struct ccw_device *cdev = channel->ccwdev;

 QETH_DBF_TEXT(SETUP, 2, "setupch");

 channel->state = CH_STATE_DOWN;
 atomic_set(&channel->irq_pending, 0);

 spin_lock_irq(get_ccwdev_lock(cdev));
 cdev->handler = qeth_irq;
 spin_unlock_irq(get_ccwdev_lock(cdev));
}
