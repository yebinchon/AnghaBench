
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctcm_priv {int protocol; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,struct ccwgroup_device*,int ) ;
 int CTC_DBF_INFO ;
 int SETUP ;
 int ctcm_shutdown_device (struct ccwgroup_device*) ;
 struct ctcm_priv* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct ctcm_priv*) ;
 int put_device (int *) ;

__attribute__((used)) static void ctcm_remove_device(struct ccwgroup_device *cgdev)
{
 struct ctcm_priv *priv = dev_get_drvdata(&cgdev->dev);

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_INFO,
   "removing device %p, proto : %d",
   cgdev, priv->protocol);

 if (cgdev->state == CCWGROUP_ONLINE)
  ctcm_shutdown_device(cgdev);
 dev_set_drvdata(&cgdev->dev, ((void*)0));
 kfree(priv);
 put_device(&cgdev->dev);
}
