
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* discipline; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_2__ {int (* set_offline ) (struct ccwgroup_device*) ;} ;


 struct qeth_card* dev_get_drvdata (int *) ;
 int stub1 (struct ccwgroup_device*) ;

__attribute__((used)) static int qeth_core_set_offline(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 return card->discipline->set_offline(gdev);
}
