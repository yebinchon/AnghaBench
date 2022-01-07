
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {TYPE_2__* gdev; TYPE_1__* discipline; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* set_online ) (struct ccwgroup_device*) ;} ;


 struct qeth_card* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*) ;
 int qeth_set_allowed_threads (struct qeth_card*,int,int ) ;
 int stub1 (struct ccwgroup_device*) ;

__attribute__((used)) static int qeth_resume(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc;

 rc = card->discipline->set_online(gdev);

 qeth_set_allowed_threads(card, 0xffffffff, 0);
 if (rc)
  dev_warn(&card->gdev->dev, "The qeth device driver failed to recover an error on the device\n");
 return rc;
}
