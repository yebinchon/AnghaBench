
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct wmi_device {TYPE_1__ dev; } ;
struct bmof_priv {int bmofdata; int bmof_bin_attr; } ;


 struct bmof_priv* dev_get_drvdata (TYPE_1__*) ;
 int kfree (int ) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static int wmi_bmof_remove(struct wmi_device *wdev)
{
 struct bmof_priv *priv = dev_get_drvdata(&wdev->dev);

 sysfs_remove_bin_file(&wdev->dev.kobj, &priv->bmof_bin_attr);
 kfree(priv->bmofdata);
 return 0;
}
