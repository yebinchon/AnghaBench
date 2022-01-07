
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * of_node; } ;
struct platform_device {TYPE_1__ dev; int id; int name; } ;


 int BUG_ON (int ) ;
 int PLATFORM_DEVID_NONE ;
 int dev_name (TYPE_1__*) ;
 int device_add (TYPE_1__*) ;
 int of_node_to_nid (int *) ;
 int set_dev_node (TYPE_1__*,int ) ;

int of_device_add(struct platform_device *ofdev)
{
 BUG_ON(ofdev->dev.of_node == ((void*)0));



 ofdev->name = dev_name(&ofdev->dev);
 ofdev->id = PLATFORM_DEVID_NONE;






 set_dev_node(&ofdev->dev, of_node_to_nid(ofdev->dev.of_node));

 return device_add(&ofdev->dev);
}
