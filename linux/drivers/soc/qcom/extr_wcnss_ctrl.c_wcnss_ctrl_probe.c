
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcnss_ctrl {int probe_work; int cbc; int ack; int channel; int * dev; } ;
struct rpmsg_device {int dev; int ept; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int dev_set_drvdata (int *,struct wcnss_ctrl*) ;
 struct wcnss_ctrl* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int schedule_work (int *) ;
 int wcnss_async_probe ;

__attribute__((used)) static int wcnss_ctrl_probe(struct rpmsg_device *rpdev)
{
 struct wcnss_ctrl *wcnss;

 wcnss = devm_kzalloc(&rpdev->dev, sizeof(*wcnss), GFP_KERNEL);
 if (!wcnss)
  return -ENOMEM;

 wcnss->dev = &rpdev->dev;
 wcnss->channel = rpdev->ept;

 init_completion(&wcnss->ack);
 init_completion(&wcnss->cbc);
 INIT_WORK(&wcnss->probe_work, wcnss_async_probe);

 dev_set_drvdata(&rpdev->dev, wcnss);

 schedule_work(&wcnss->probe_work);

 return 0;
}
