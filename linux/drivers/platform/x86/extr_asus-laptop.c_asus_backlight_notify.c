
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct asus_laptop {struct backlight_device* backlight_device; } ;


 int BACKLIGHT_UPDATE_HOTKEY ;
 int backlight_force_update (struct backlight_device*,int ) ;

__attribute__((used)) static int asus_backlight_notify(struct asus_laptop *asus)
{
 struct backlight_device *bd = asus->backlight_device;
 int old = bd->props.brightness;

 backlight_force_update(bd, BACKLIGHT_UPDATE_HOTKEY);

 return old;
}
