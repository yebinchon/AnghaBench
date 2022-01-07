
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct mtu3* private; int file; } ;
struct mtu3 {int ippc_base; } ;
struct debugfs_reg32 {scalar_t__ offset; int name; } ;
struct TYPE_2__ {char* d_iname; } ;


 int ARRAY_SIZE (struct debugfs_reg32*) ;
 TYPE_1__* file_dentry (int ) ;
 struct debugfs_reg32* mtu3_prb_regs ;
 int mtu3_readl (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int mtu3_probe_show(struct seq_file *sf, void *unused)
{
 const char *file_name = file_dentry(sf->file)->d_iname;
 struct mtu3 *mtu = sf->private;
 const struct debugfs_reg32 *regs;
 int i;

 for (i = 0; i < ARRAY_SIZE(mtu3_prb_regs); i++) {
  regs = &mtu3_prb_regs[i];

  if (strcmp(regs->name, file_name) == 0)
   break;
 }

 seq_printf(sf, "0x%04x - 0x%08x\n", (u32)regs->offset,
     mtu3_readl(mtu->ippc_base, (u32)regs->offset));

 return 0;
}
