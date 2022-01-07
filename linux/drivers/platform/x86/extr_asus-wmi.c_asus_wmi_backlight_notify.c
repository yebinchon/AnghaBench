
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct asus_wmi {struct backlight_device* backlight_device; } ;


 int BACKLIGHT_UPDATE_HOTKEY ;
 int NOTIFY_BRNDOWN_MAX ;
 int NOTIFY_BRNDOWN_MIN ;
 int NOTIFY_BRNUP_MAX ;
 int NOTIFY_BRNUP_MIN ;
 int backlight_force_update (struct backlight_device*,int ) ;
 int backlight_update_status (struct backlight_device*) ;

__attribute__((used)) static int asus_wmi_backlight_notify(struct asus_wmi *asus, int code)
{
 struct backlight_device *bd = asus->backlight_device;
 int old = bd->props.brightness;
 int new = old;

 if (code >= NOTIFY_BRNUP_MIN && code <= NOTIFY_BRNUP_MAX)
  new = code - NOTIFY_BRNUP_MIN + 1;
 else if (code >= NOTIFY_BRNDOWN_MIN && code <= NOTIFY_BRNDOWN_MAX)
  new = code - NOTIFY_BRNDOWN_MIN;

 bd->props.brightness = new;
 backlight_update_status(bd);
 backlight_force_update(bd, BACKLIGHT_UPDATE_HOTKEY);

 return old;
}
