
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_commands {int set_backlight; } ;
struct TYPE_4__ {scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {struct sabi_commands commands; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 struct samsung_laptop* bl_get_data (struct backlight_device*) ;
 int sabi_set_commandb (struct samsung_laptop*,int ,int) ;
 int set_brightness (struct samsung_laptop*,int ) ;

__attribute__((used)) static int update_status(struct backlight_device *bd)
{
 struct samsung_laptop *samsung = bl_get_data(bd);
 const struct sabi_commands *commands = &samsung->config->commands;

 set_brightness(samsung, bd->props.brightness);

 if (bd->props.power == FB_BLANK_UNBLANK)
  sabi_set_commandb(samsung, commands->set_backlight, 1);
 else
  sabi_set_commandb(samsung, commands->set_backlight, 0);

 return 0;
}
