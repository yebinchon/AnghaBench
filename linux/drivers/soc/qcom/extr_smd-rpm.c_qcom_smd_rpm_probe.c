
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct rpmsg_device {TYPE_1__ dev; int ept; } ;
struct qcom_smd_rpm {int rpm_channel; TYPE_1__* dev; int ack; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,struct qcom_smd_rpm*) ;
 struct qcom_smd_rpm* devm_kzalloc (TYPE_1__*,int,int ) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static int qcom_smd_rpm_probe(struct rpmsg_device *rpdev)
{
 struct qcom_smd_rpm *rpm;

 rpm = devm_kzalloc(&rpdev->dev, sizeof(*rpm), GFP_KERNEL);
 if (!rpm)
  return -ENOMEM;

 mutex_init(&rpm->lock);
 init_completion(&rpm->ack);

 rpm->dev = &rpdev->dev;
 rpm->rpm_channel = rpdev->ept;
 dev_set_drvdata(&rpdev->dev, rpm);

 return of_platform_populate(rpdev->dev.of_node, ((void*)0), ((void*)0), &rpdev->dev);
}
