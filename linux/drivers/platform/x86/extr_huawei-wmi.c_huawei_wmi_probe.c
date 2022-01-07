
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dev; } ;
struct huawei_wmi_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct huawei_wmi_priv*) ;
 struct huawei_wmi_priv* devm_kzalloc (int *,int,int ) ;
 int huawei_wmi_input_setup (struct wmi_device*) ;
 int huawei_wmi_leds_setup (struct wmi_device*) ;

__attribute__((used)) static int huawei_wmi_probe(struct wmi_device *wdev, const void *context)
{
 struct huawei_wmi_priv *priv;
 int err;

 priv = devm_kzalloc(&wdev->dev, sizeof(struct huawei_wmi_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev_set_drvdata(&wdev->dev, priv);

 err = huawei_wmi_input_setup(wdev);
 if (err)
  return err;

 return huawei_wmi_leds_setup(wdev);
}
