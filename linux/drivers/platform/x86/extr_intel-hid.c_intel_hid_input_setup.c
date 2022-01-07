
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct intel_hid_priv {TYPE_2__* input_dev; } ;
struct TYPE_5__ {int bustype; } ;
struct TYPE_6__ {char* name; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 struct intel_hid_priv* dev_get_drvdata (int *) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 int input_register_device (TYPE_2__*) ;
 int intel_hid_keymap ;
 int sparse_keymap_setup (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int intel_hid_input_setup(struct platform_device *device)
{
 struct intel_hid_priv *priv = dev_get_drvdata(&device->dev);
 int ret;

 priv->input_dev = devm_input_allocate_device(&device->dev);
 if (!priv->input_dev)
  return -ENOMEM;

 ret = sparse_keymap_setup(priv->input_dev, intel_hid_keymap, ((void*)0));
 if (ret)
  return ret;

 priv->input_dev->name = "Intel HID events";
 priv->input_dev->id.bustype = BUS_HOST;

 return input_register_device(priv->input_dev);
}
