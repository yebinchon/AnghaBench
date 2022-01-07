
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dev; } ;
struct dell_wmi_priv {int interface_version; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int dell_wmi_get_descriptor_valid () ;
 int dell_wmi_get_interface_version (int *) ;
 int dell_wmi_input_setup (struct wmi_device*) ;
 int dev_set_drvdata (int *,struct dell_wmi_priv*) ;
 struct dell_wmi_priv* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int dell_wmi_probe(struct wmi_device *wdev, const void *context)
{
 struct dell_wmi_priv *priv;
 int ret;

 ret = dell_wmi_get_descriptor_valid();
 if (ret)
  return ret;

 priv = devm_kzalloc(
  &wdev->dev, sizeof(struct dell_wmi_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 dev_set_drvdata(&wdev->dev, priv);

 if (!dell_wmi_get_interface_version(&priv->interface_version))
  return -EPROBE_DEFER;

 return dell_wmi_input_setup(wdev);
}
