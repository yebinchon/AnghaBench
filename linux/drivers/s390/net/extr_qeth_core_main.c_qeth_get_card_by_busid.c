
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct ccwgroup_device {int dev; } ;


 struct qeth_card* dev_get_drvdata (int *) ;
 struct ccwgroup_device* get_ccwgroupdev_by_busid (int *,char*) ;
 int put_device (int *) ;
 int qeth_core_ccwgroup_driver ;

struct qeth_card *qeth_get_card_by_busid(char *bus_id)
{
 struct ccwgroup_device *gdev;
 struct qeth_card *card;

 gdev = get_ccwgroupdev_by_busid(&qeth_core_ccwgroup_driver, bus_id);
 if (!gdev)
  return ((void*)0);

 card = dev_get_drvdata(&gdev->dev);
 put_device(&gdev->dev);
 return card;
}
