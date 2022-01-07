
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backlight_properties {scalar_t__ max_brightness; scalar_t__ brightness; int type; } ;
struct arcxcnn {int bl; int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ initial_brightness; int name; } ;


 int BACKLIGHT_PLATFORM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_BRIGHTNESS ;
 int PTR_ERR_OR_ZERO (int ) ;
 int arcxcnn_bl_ops ;
 int devm_backlight_device_register (int ,char const*,int ,struct arcxcnn*,int *,struct backlight_properties*) ;
 struct backlight_properties* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int arcxcnn_backlight_register(struct arcxcnn *lp)
{
 struct backlight_properties *props;
 const char *name = lp->pdata->name ? : "arctic_bl";

 props = devm_kzalloc(lp->dev, sizeof(*props), GFP_KERNEL);
 if (!props)
  return -ENOMEM;

 props->type = BACKLIGHT_PLATFORM;
 props->max_brightness = MAX_BRIGHTNESS;

 if (lp->pdata->initial_brightness > props->max_brightness)
  lp->pdata->initial_brightness = props->max_brightness;

 props->brightness = lp->pdata->initial_brightness;

 lp->bl = devm_backlight_device_register(lp->dev, name, lp->dev, lp,
           &arcxcnn_bl_ops, props);
 return PTR_ERR_OR_ZERO(lp->bl);
}
