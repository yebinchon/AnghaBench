
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct as3711_bl_pdata {int su1_fb; scalar_t__ su1_max_uA; int su2_fb; scalar_t__ su2_max_uA; scalar_t__ su2_feedback; int su2_auto_curr1; int su2_auto_curr2; int su2_auto_curr3; int su2_fbprot; } ;
struct TYPE_2__ {int of_node; } ;


 scalar_t__ AS3711_SU2_CURR1 ;
 scalar_t__ AS3711_SU2_CURR2 ;
 scalar_t__ AS3711_SU2_CURR3 ;
 scalar_t__ AS3711_SU2_CURR_AUTO ;
 int AS3711_SU2_GPIO2 ;
 int AS3711_SU2_GPIO3 ;
 int AS3711_SU2_GPIO4 ;
 int AS3711_SU2_LX_SD4 ;
 scalar_t__ AS3711_SU2_VOLTAGE ;
 int EINVAL ;
 int ENODEV ;
 int dev_dbg (struct device*,char*) ;
 struct as3711_bl_pdata* dev_get_platdata (struct device*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static int as3711_backlight_parse_dt(struct device *dev)
{
 struct as3711_bl_pdata *pdata = dev_get_platdata(dev);
 struct device_node *bl, *fb;
 int ret;

 bl = of_get_child_by_name(dev->parent->of_node, "backlight");
 if (!bl) {
  dev_dbg(dev, "backlight node not found\n");
  return -ENODEV;
 }

 fb = of_parse_phandle(bl, "su1-dev", 0);
 if (fb) {
  of_node_put(fb);

  pdata->su1_fb = 1;

  ret = of_property_read_u32(bl, "su1-max-uA", &pdata->su1_max_uA);
  if (pdata->su1_max_uA <= 0)
   ret = -EINVAL;
  if (ret < 0)
   goto err_put_bl;
 }

 fb = of_parse_phandle(bl, "su2-dev", 0);
 if (fb) {
  int count = 0;

  of_node_put(fb);

  pdata->su2_fb = 1;

  ret = of_property_read_u32(bl, "su2-max-uA", &pdata->su2_max_uA);
  if (pdata->su2_max_uA <= 0)
   ret = -EINVAL;
  if (ret < 0)
   goto err_put_bl;

  if (of_find_property(bl, "su2-feedback-voltage", ((void*)0))) {
   pdata->su2_feedback = AS3711_SU2_VOLTAGE;
   count++;
  }
  if (of_find_property(bl, "su2-feedback-curr1", ((void*)0))) {
   pdata->su2_feedback = AS3711_SU2_CURR1;
   count++;
  }
  if (of_find_property(bl, "su2-feedback-curr2", ((void*)0))) {
   pdata->su2_feedback = AS3711_SU2_CURR2;
   count++;
  }
  if (of_find_property(bl, "su2-feedback-curr3", ((void*)0))) {
   pdata->su2_feedback = AS3711_SU2_CURR3;
   count++;
  }
  if (of_find_property(bl, "su2-feedback-curr-auto", ((void*)0))) {
   pdata->su2_feedback = AS3711_SU2_CURR_AUTO;
   count++;
  }
  if (count != 1) {
   ret = -EINVAL;
   goto err_put_bl;
  }

  count = 0;
  if (of_find_property(bl, "su2-fbprot-lx-sd4", ((void*)0))) {
   pdata->su2_fbprot = AS3711_SU2_LX_SD4;
   count++;
  }
  if (of_find_property(bl, "su2-fbprot-gpio2", ((void*)0))) {
   pdata->su2_fbprot = AS3711_SU2_GPIO2;
   count++;
  }
  if (of_find_property(bl, "su2-fbprot-gpio3", ((void*)0))) {
   pdata->su2_fbprot = AS3711_SU2_GPIO3;
   count++;
  }
  if (of_find_property(bl, "su2-fbprot-gpio4", ((void*)0))) {
   pdata->su2_fbprot = AS3711_SU2_GPIO4;
   count++;
  }
  if (count != 1) {
   ret = -EINVAL;
   goto err_put_bl;
  }

  count = 0;
  if (of_find_property(bl, "su2-auto-curr1", ((void*)0))) {
   pdata->su2_auto_curr1 = 1;
   count++;
  }
  if (of_find_property(bl, "su2-auto-curr2", ((void*)0))) {
   pdata->su2_auto_curr2 = 1;
   count++;
  }
  if (of_find_property(bl, "su2-auto-curr3", ((void*)0))) {
   pdata->su2_auto_curr3 = 1;
   count++;
  }





  if (!count ^ (pdata->su2_feedback != AS3711_SU2_CURR_AUTO)) {
   ret = -EINVAL;
   goto err_put_bl;
  }
 }

 of_node_put(bl);

 return 0;

err_put_bl:
 of_node_put(bl);

 return ret;
}
