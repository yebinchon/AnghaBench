
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;
struct apr {int rxwq; } ;


 int apr_remove_device ;
 int destroy_workqueue (int ) ;
 struct apr* dev_get_drvdata (int *) ;
 int device_for_each_child (int *,int *,int ) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void apr_remove(struct rpmsg_device *rpdev)
{
 struct apr *apr = dev_get_drvdata(&rpdev->dev);

 device_for_each_child(&rpdev->dev, ((void*)0), apr_remove_device);
 flush_workqueue(apr->rxwq);
 destroy_workqueue(apr->rxwq);
}
