
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dev; } ;
struct dell_wmi_priv {int input_dev; } ;


 struct dell_wmi_priv* dev_get_drvdata (int *) ;
 int input_unregister_device (int ) ;

__attribute__((used)) static void dell_wmi_input_destroy(struct wmi_device *wdev)
{
 struct dell_wmi_priv *priv = dev_get_drvdata(&wdev->dev);

 input_unregister_device(priv->input_dev);
}
