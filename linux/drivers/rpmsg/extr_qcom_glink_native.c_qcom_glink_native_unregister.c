
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dev; } ;


 int device_unregister (int ) ;

void qcom_glink_native_unregister(struct qcom_glink *glink)
{
 device_unregister(glink->dev);
}
