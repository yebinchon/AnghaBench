
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mipid_platform_data {unsigned int (* get_bklight_max ) (struct mipid_platform_data*) ;int (* set_bklight_level ) (struct mipid_platform_data*,unsigned int) ;} ;
struct mipid_device {unsigned int saved_bklight_level; int enabled; TYPE_2__* spi; } ;
struct lcd_panel {int dummy; } ;
struct TYPE_3__ {struct mipid_platform_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int stub1 (struct mipid_platform_data*) ;
 int stub2 (struct mipid_platform_data*,unsigned int) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static int mipid_set_bklight_level(struct lcd_panel *panel, unsigned int level)
{
 struct mipid_device *md = to_mipid_device(panel);
 struct mipid_platform_data *pd = md->spi->dev.platform_data;

 if (pd->get_bklight_max == ((void*)0) || pd->set_bklight_level == ((void*)0))
  return -ENODEV;
 if (level > pd->get_bklight_max(pd))
  return -EINVAL;
 if (!md->enabled) {
  md->saved_bklight_level = level;
  return 0;
 }
 pd->set_bklight_level(pd, level);

 return 0;
}
