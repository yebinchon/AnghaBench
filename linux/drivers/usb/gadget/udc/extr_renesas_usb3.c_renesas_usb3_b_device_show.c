
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct renesas_usb3* private; } ;
struct renesas_usb3 {int forced_b_device; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int renesas_usb3_b_device_show(struct seq_file *s, void *unused)
{
 struct renesas_usb3 *usb3 = s->private;

 seq_printf(s, "%d\n", usb3->forced_b_device);

 return 0;
}
