
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int released; int dev; } ;


 int device_unregister (int *) ;
 int wait_for_completion (int *) ;

void ntb_unregister_device(struct ntb_dev *ntb)
{
 device_unregister(&ntb->dev);
 wait_for_completion(&ntb->released);
}
