
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct hisi_sas_debugfs_reg {int count; int lu; int base_off; } ;


 char* hisi_sas_debugfs_to_reg_name (int,int ,int ) ;
 int seq_printf (struct seq_file*,char*,int,int ,...) ;

__attribute__((used)) static void hisi_sas_debugfs_print_reg(u32 *regs_val, const void *ptr,
           struct seq_file *s)
{
 const struct hisi_sas_debugfs_reg *reg = ptr;
 int i;

 for (i = 0; i < reg->count; i++) {
  int off = i * 4;
  const char *name;

  name = hisi_sas_debugfs_to_reg_name(off, reg->base_off,
          reg->lu);

  if (name)
   seq_printf(s, "0x%08x 0x%08x %s\n", off,
       regs_val[i], name);
  else
   seq_printf(s, "0x%08x 0x%08x\n", off,
       regs_val[i]);
 }
}
