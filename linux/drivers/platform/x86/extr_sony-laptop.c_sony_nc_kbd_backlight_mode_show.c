
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mode; } ;


 int PAGE_SIZE ;
 TYPE_1__* kbdbl_ctl ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t sony_nc_kbd_backlight_mode_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 ssize_t count = 0;
 count = snprintf(buffer, PAGE_SIZE, "%d\n", kbdbl_ctl->mode);
 return count;
}
