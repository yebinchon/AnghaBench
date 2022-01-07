
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp_cooling_device {char* name; int cdev; int state; struct qmp* qmp; } ;
struct qmp {int dev; } ;
struct device_node {scalar_t__ name; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int dev_err (int ,char*,char*) ;
 int devm_thermal_of_cooling_device_register (int ,struct device_node*,char*,struct qmp_cooling_device*,int *) ;
 int qmp_cdev_init_state ;
 int qmp_cooling_device_ops ;

__attribute__((used)) static int qmp_cooling_device_add(struct qmp *qmp,
      struct qmp_cooling_device *qmp_cdev,
      struct device_node *node)
{
 char *cdev_name = (char *)node->name;

 qmp_cdev->qmp = qmp;
 qmp_cdev->state = qmp_cdev_init_state;
 qmp_cdev->name = cdev_name;
 qmp_cdev->cdev = devm_thermal_of_cooling_device_register
    (qmp->dev, node,
    cdev_name,
    qmp_cdev, &qmp_cooling_device_ops);

 if (IS_ERR(qmp_cdev->cdev))
  dev_err(qmp->dev, "unable to register %s cooling device\n",
   cdev_name);

 return PTR_ERR_OR_ZERO(qmp_cdev->cdev);
}
