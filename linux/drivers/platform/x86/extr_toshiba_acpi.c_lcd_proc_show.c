
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct toshiba_acpi_dev {TYPE_2__* backlight_dev; } ;
struct seq_file {struct toshiba_acpi_dev* private; } ;
struct TYPE_3__ {int max_brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int ENODEV ;
 int get_lcd_brightness (TYPE_2__*) ;
 int pr_err (char*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int lcd_proc_show(struct seq_file *m, void *v)
{
 struct toshiba_acpi_dev *dev = m->private;
 int levels;
 int value;

 if (!dev->backlight_dev)
  return -ENODEV;

 levels = dev->backlight_dev->props.max_brightness + 1;
 value = get_lcd_brightness(dev->backlight_dev);
 if (value < 0) {
  pr_err("Error reading LCD brightness\n");
  return value;
 }

 seq_printf(m, "brightness:              %d\n", value);
 seq_printf(m, "brightness_levels:       %d\n", levels);

 return 0;
}
