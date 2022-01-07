
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int last_key_event; int key_event_valid; } ;
struct seq_file {struct toshiba_acpi_dev* private; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int keys_proc_show(struct seq_file *m, void *v)
{
 struct toshiba_acpi_dev *dev = m->private;

 seq_printf(m, "hotkey_ready:            %d\n", dev->key_event_valid);
 seq_printf(m, "hotkey:                  0x%04x\n", dev->last_key_event);

 return 0;
}
