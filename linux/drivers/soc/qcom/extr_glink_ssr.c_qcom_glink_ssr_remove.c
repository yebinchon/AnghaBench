
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;
struct glink_ssr {int nb; } ;


 struct glink_ssr* dev_get_drvdata (int *) ;
 int qcom_unregister_ssr_notifier (int *) ;

__attribute__((used)) static void qcom_glink_ssr_remove(struct rpmsg_device *rpdev)
{
 struct glink_ssr *ssr = dev_get_drvdata(&rpdev->dev);

 qcom_unregister_ssr_notifier(&ssr->nb);
}
