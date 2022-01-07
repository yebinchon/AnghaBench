
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {scalar_t__ max_brightness; scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int CONFIG_OF ;
 int EPROBE_DEFER ;
 struct backlight_device* ERR_PTR (int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 struct backlight_device* of_find_backlight_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (scalar_t__,char*,int ) ;

struct backlight_device *of_find_backlight(struct device *dev)
{
 struct backlight_device *bd = ((void*)0);
 struct device_node *np;

 if (!dev)
  return ((void*)0);

 if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
  np = of_parse_phandle(dev->of_node, "backlight", 0);
  if (np) {
   bd = of_find_backlight_by_node(np);
   of_node_put(np);
   if (!bd)
    return ERR_PTR(-EPROBE_DEFER);




   if (!bd->props.brightness)
    bd->props.brightness = bd->props.max_brightness;
  }
 }

 return bd;
}
