
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct intel_vbtn_priv {TYPE_3__* input_dev; } ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {char* name; TYPE_2__ id; TYPE_1__ dev; } ;


 int BUS_HOST ;
 int ENOMEM ;
 struct intel_vbtn_priv* dev_get_drvdata (int *) ;
 TYPE_3__* devm_input_allocate_device (int *) ;
 int input_register_device (TYPE_3__*) ;
 int intel_vbtn_keymap ;
 int sparse_keymap_setup (TYPE_3__*,int ,int *) ;

__attribute__((used)) static int intel_vbtn_input_setup(struct platform_device *device)
{
 struct intel_vbtn_priv *priv = dev_get_drvdata(&device->dev);
 int ret;

 priv->input_dev = devm_input_allocate_device(&device->dev);
 if (!priv->input_dev)
  return -ENOMEM;

 ret = sparse_keymap_setup(priv->input_dev, intel_vbtn_keymap, ((void*)0));
 if (ret)
  return ret;

 priv->input_dev->dev.parent = &device->dev;
 priv->input_dev->name = "Intel Virtual Button driver";
 priv->input_dev->id.bustype = BUS_HOST;

 return input_register_device(priv->input_dev);
}
