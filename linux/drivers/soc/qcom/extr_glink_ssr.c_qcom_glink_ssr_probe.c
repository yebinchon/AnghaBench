
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {int dev; int ept; } ;
struct TYPE_2__ {int notifier_call; } ;
struct glink_ssr {TYPE_1__ nb; int ept; int * dev; int completion; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct glink_ssr*) ;
 struct glink_ssr* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int qcom_glink_ssr_notify ;
 int qcom_register_ssr_notifier (TYPE_1__*) ;

__attribute__((used)) static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
{
 struct glink_ssr *ssr;

 ssr = devm_kzalloc(&rpdev->dev, sizeof(*ssr), GFP_KERNEL);
 if (!ssr)
  return -ENOMEM;

 init_completion(&ssr->completion);

 ssr->dev = &rpdev->dev;
 ssr->ept = rpdev->ept;
 ssr->nb.notifier_call = qcom_glink_ssr_notify;

 dev_set_drvdata(&rpdev->dev, ssr);

 return qcom_register_ssr_notifier(&ssr->nb);
}
