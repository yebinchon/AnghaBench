
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct asus_wmi* private; } ;
struct TYPE_2__ {int dev_id; } ;
struct asus_wmi {TYPE_1__ debug; } ;


 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;
 int seq_printf (struct seq_file*,char*,int ,int) ;

__attribute__((used)) static int show_dsts(struct seq_file *m, void *data)
{
 struct asus_wmi *asus = m->private;
 int err;
 u32 retval = -1;

 err = asus_wmi_get_devstate(asus, asus->debug.dev_id, &retval);
 if (err < 0)
  return err;

 seq_printf(m, "DSTS(%#x) = %#x\n", asus->debug.dev_id, retval);

 return 0;
}
