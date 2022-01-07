
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int kbd_type; int kbd_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HCI_MISC_SHIFT ;
 int SCI_KBD_MODE_AUTO ;
 int SCI_KBD_MODE_FNZ ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_kbd_illum_status_set (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static ssize_t kbd_backlight_timeout_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int time;
 int ret;

 ret = kstrtoint(buf, 0, &time);
 if (ret)
  return ret;


 if (toshiba->kbd_type == 1) {
  if (time < 0 || time > 60)
   return -EINVAL;
 } else if (toshiba->kbd_type == 2) {
  if (time < 1 || time > 60)
   return -EINVAL;
 }




 if (toshiba->kbd_time != time) {

  time = time << HCI_MISC_SHIFT;

  if (toshiba->kbd_type == 1)
   time |= SCI_KBD_MODE_FNZ;
  else if (toshiba->kbd_type == 2)
   time |= SCI_KBD_MODE_AUTO;

  ret = toshiba_kbd_illum_status_set(toshiba, time);
  if (ret)
   return ret;

  toshiba->kbd_time = time >> HCI_MISC_SHIFT;
 }

 return count;
}
