
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {struct ccw_device* ccwdev; } ;
struct ccw_device {int * handler; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void qeth_clean_channel(struct qeth_channel *channel)
{
 struct ccw_device *cdev = channel->ccwdev;

 QETH_DBF_TEXT(SETUP, 2, "freech");

 spin_lock_irq(get_ccwdev_lock(cdev));
 cdev->handler = ((void*)0);
 spin_unlock_irq(get_ccwdev_lock(cdev));
}
