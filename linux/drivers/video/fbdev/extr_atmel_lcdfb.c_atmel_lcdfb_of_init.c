
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_info {int modelist; struct fb_var_screeninfo var; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct atmel_lcdfb_power_ctrl_gpio {int list; struct gpio_desc* gpiod; } ;
struct atmel_lcdfb_pdata {int lcd_wiring_mode; void* lcdcon_pol_negative; void* lcdcon_is_backlight; int atmel_lcdfb_power_control; int pwr_gpios; int default_dmacon; int default_lcdcon2; int guard_time; } ;
struct atmel_lcdfb_info {struct atmel_lcdfb_config* config; TYPE_1__* pdev; struct atmel_lcdfb_pdata pdata; struct fb_info* info; } ;
struct atmel_lcdfb_config {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int OF_USE_NATIVE_MODE ;
 int atmel_lcdfb_dt_ids ;
 int atmel_lcdfb_get_of_wiring_modes (struct device_node*) ;
 int atmel_lcdfb_power_control_gpio ;
 int dev_err (struct device*,char*,...) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,char*,int,int ) ;
 struct atmel_lcdfb_power_ctrl_gpio* devm_kzalloc (struct device*,int,int ) ;
 int fb_add_videomode (struct fb_videomode*,int *) ;
 int fb_videomode_from_videomode (struct videomode*,struct fb_videomode*) ;
 int gpiod_count (struct device*,char*) ;
 int gpiod_direction_output (struct gpio_desc*,int ) ;
 int gpiod_is_active_low (struct gpio_desc*) ;
 int list_add (int *,int *) ;
 int of_get_videomode (struct device_node*,struct videomode*,int ) ;
 TYPE_2__* of_match_device (int ,struct device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int atmel_lcdfb_of_init(struct atmel_lcdfb_info *sinfo)
{
 struct fb_info *info = sinfo->info;
 struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;
 struct fb_var_screeninfo *var = &info->var;
 struct device *dev = &sinfo->pdev->dev;
 struct device_node *np =dev->of_node;
 struct device_node *display_np;
 struct atmel_lcdfb_power_ctrl_gpio *og;
 bool is_gpio_power = 0;
 struct fb_videomode fb_vm;
 struct gpio_desc *gpiod;
 struct videomode vm;
 int ret;
 int i;

 sinfo->config = (struct atmel_lcdfb_config*)
  of_match_device(atmel_lcdfb_dt_ids, dev)->data;

 display_np = of_parse_phandle(np, "display", 0);
 if (!display_np) {
  dev_err(dev, "failed to find display phandle\n");
  return -ENOENT;
 }

 ret = of_property_read_u32(display_np, "bits-per-pixel", &var->bits_per_pixel);
 if (ret < 0) {
  dev_err(dev, "failed to get property bits-per-pixel\n");
  goto put_display_node;
 }

 ret = of_property_read_u32(display_np, "atmel,guard-time", &pdata->guard_time);
 if (ret < 0) {
  dev_err(dev, "failed to get property atmel,guard-time\n");
  goto put_display_node;
 }

 ret = of_property_read_u32(display_np, "atmel,lcdcon2", &pdata->default_lcdcon2);
 if (ret < 0) {
  dev_err(dev, "failed to get property atmel,lcdcon2\n");
  goto put_display_node;
 }

 ret = of_property_read_u32(display_np, "atmel,dmacon", &pdata->default_dmacon);
 if (ret < 0) {
  dev_err(dev, "failed to get property bits-per-pixel\n");
  goto put_display_node;
 }

 INIT_LIST_HEAD(&pdata->pwr_gpios);
 ret = -ENOMEM;
 for (i = 0; i < gpiod_count(dev, "atmel,power-control"); i++) {
  gpiod = devm_gpiod_get_index(dev, "atmel,power-control",
          i, GPIOD_ASIS);
  if (IS_ERR(gpiod))
   continue;

  og = devm_kzalloc(dev, sizeof(*og), GFP_KERNEL);
  if (!og)
   goto put_display_node;

  og->gpiod = gpiod;
  is_gpio_power = 1;

  ret = gpiod_direction_output(gpiod, gpiod_is_active_low(gpiod));
  if (ret) {
   dev_err(dev, "set direction output gpio atmel,power-control[%d] failed\n", i);
   goto put_display_node;
  }
  list_add(&og->list, &pdata->pwr_gpios);
 }

 if (is_gpio_power)
  pdata->atmel_lcdfb_power_control = atmel_lcdfb_power_control_gpio;

 ret = atmel_lcdfb_get_of_wiring_modes(display_np);
 if (ret < 0) {
  dev_err(dev, "invalid atmel,lcd-wiring-mode\n");
  goto put_display_node;
 }
 pdata->lcd_wiring_mode = ret;

 pdata->lcdcon_is_backlight = of_property_read_bool(display_np, "atmel,lcdcon-backlight");
 pdata->lcdcon_pol_negative = of_property_read_bool(display_np, "atmel,lcdcon-backlight-inverted");

 ret = of_get_videomode(display_np, &vm, OF_USE_NATIVE_MODE);
 if (ret) {
  dev_err(dev, "failed to get videomode from DT\n");
  goto put_display_node;
 }

 ret = fb_videomode_from_videomode(&vm, &fb_vm);
 if (ret < 0)
  goto put_display_node;

 fb_add_videomode(&fb_vm, &info->modelist);

put_display_node:
 of_node_put(display_np);
 return ret;
}
