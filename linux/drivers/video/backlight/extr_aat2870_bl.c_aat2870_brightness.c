
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct aat2870_bl_driver_data {int max_current; struct backlight_device* bd; } ;



__attribute__((used)) static inline int aat2870_brightness(struct aat2870_bl_driver_data *aat2870_bl,
         int brightness)
{
 struct backlight_device *bd = aat2870_bl->bd;
 int val;

 val = brightness * (aat2870_bl->max_current - 1);
 val /= bd->props.max_brightness;

 return val;
}
