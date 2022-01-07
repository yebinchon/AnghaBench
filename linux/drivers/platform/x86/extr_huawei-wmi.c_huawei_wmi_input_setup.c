
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wmi_device {int dev; } ;
struct huawei_wmi_priv {TYPE_3__* idev; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int bustype; } ;
struct TYPE_8__ {char* name; char* phys; TYPE_2__ dev; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 struct huawei_wmi_priv* dev_get_drvdata (int *) ;
 TYPE_3__* devm_input_allocate_device (int *) ;
 int huawei_wmi_keymap ;
 int input_register_device (TYPE_3__*) ;
 int sparse_keymap_setup (TYPE_3__*,int ,int *) ;

__attribute__((used)) static int huawei_wmi_input_setup(struct wmi_device *wdev)
{
 struct huawei_wmi_priv *priv = dev_get_drvdata(&wdev->dev);
 int err;

 priv->idev = devm_input_allocate_device(&wdev->dev);
 if (!priv->idev)
  return -ENOMEM;

 priv->idev->name = "Huawei WMI hotkeys";
 priv->idev->phys = "wmi/input0";
 priv->idev->id.bustype = BUS_HOST;
 priv->idev->dev.parent = &wdev->dev;

 err = sparse_keymap_setup(priv->idev, huawei_wmi_keymap, ((void*)0));
 if (err)
  return err;

 return input_register_device(priv->idev);
}
