
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_acpi_dev {int kbd_type; int kbd_mode; int kbd_time; int kbd_event_generated; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int kbd_mode; } ;


 int EINVAL ;
 int HCI_MISC_SHIFT ;
 int SCI_KBD_MODE_AUTO ;
 int SCI_KBD_MODE_FNZ ;
 int SCI_KBD_MODE_OFF ;
 int SCI_KBD_MODE_ON ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int kbd_bl_work ;
 int kstrtoint (char const*,int ,int*) ;
 int schedule_work (int *) ;
 TYPE_1__* toshiba_acpi ;
 int toshiba_kbd_illum_status_set (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static ssize_t kbd_backlight_mode_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int mode;
 int ret;


 ret = kstrtoint(buf, 0, &mode);
 if (ret)
  return ret;


 if (toshiba->kbd_type == 1) {

  if (mode != SCI_KBD_MODE_FNZ && mode != SCI_KBD_MODE_AUTO)
   return -EINVAL;
 } else if (toshiba->kbd_type == 2) {

  if (mode != SCI_KBD_MODE_AUTO && mode != SCI_KBD_MODE_ON &&
      mode != SCI_KBD_MODE_OFF)
   return -EINVAL;
 }
 if (toshiba->kbd_mode != mode) {

  int time = toshiba->kbd_time << HCI_MISC_SHIFT;


  if (toshiba->kbd_type == 1) {

   time |= toshiba->kbd_mode;
  } else if (toshiba->kbd_type == 2) {

   time |= mode;
  }

  ret = toshiba_kbd_illum_status_set(toshiba, time);
  if (ret)
   return ret;

  toshiba->kbd_mode = mode;
  toshiba_acpi->kbd_mode = mode;
  if (toshiba->kbd_type == 2 &&
      !toshiba->kbd_event_generated)
   schedule_work(&kbd_bl_work);
 }

 return count;
}
