
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int dummy; } ;
struct seq_file {struct toshiba_acpi_dev* private; } ;


 int EIO ;
 int HCI_VIDEO_OUT_CRT ;
 int HCI_VIDEO_OUT_LCD ;
 int HCI_VIDEO_OUT_TV ;
 scalar_t__ get_video_status (struct toshiba_acpi_dev*,int*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int video_proc_show(struct seq_file *m, void *v)
{
 struct toshiba_acpi_dev *dev = m->private;
 int is_lcd, is_crt, is_tv;
 u32 value;

 if (get_video_status(dev, &value))
  return -EIO;

 is_lcd = (value & HCI_VIDEO_OUT_LCD) ? 1 : 0;
 is_crt = (value & HCI_VIDEO_OUT_CRT) ? 1 : 0;
 is_tv = (value & HCI_VIDEO_OUT_TV) ? 1 : 0;

 seq_printf(m, "lcd_out:                 %d\n", is_lcd);
 seq_printf(m, "crt_out:                 %d\n", is_crt);
 seq_printf(m, "tv_out:                  %d\n", is_tv);

 return 0;
}
