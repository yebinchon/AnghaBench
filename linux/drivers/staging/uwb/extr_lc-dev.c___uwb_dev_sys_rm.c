
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int device_del (int *) ;

__attribute__((used)) static void __uwb_dev_sys_rm(struct uwb_dev *uwb_dev)
{
 dev_set_drvdata(&uwb_dev->dev, ((void*)0));
 device_del(&uwb_dev->dev);
}
