
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_smd_edge {int dev; } ;
struct TYPE_3__ {int release; int * parent; } ;
struct TYPE_4__ {TYPE_1__ dev; int * ops; } ;
struct qcom_smd_device {TYPE_2__ rpdev; struct qcom_smd_edge* edge; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct qcom_smd_device* kzalloc (int,int ) ;
 int qcom_smd_device_ops ;
 int qcom_smd_release_device ;
 int rpmsg_chrdev_register_device (TYPE_2__*) ;

__attribute__((used)) static int qcom_smd_create_chrdev(struct qcom_smd_edge *edge)
{
 struct qcom_smd_device *qsdev;

 qsdev = kzalloc(sizeof(*qsdev), GFP_KERNEL);
 if (!qsdev)
  return -ENOMEM;

 qsdev->edge = edge;
 qsdev->rpdev.ops = &qcom_smd_device_ops;
 qsdev->rpdev.dev.parent = &edge->dev;
 qsdev->rpdev.dev.release = qcom_smd_release_device;

 return rpmsg_chrdev_register_device(&qsdev->rpdev);
}
