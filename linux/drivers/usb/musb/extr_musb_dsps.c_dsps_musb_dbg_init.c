
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {int ctrl_base; int controller; } ;
struct TYPE_2__ {int base; int nregs; int regs; } ;
struct dsps_glue {TYPE_1__ regset; struct dentry* dbgfs_root; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int S_IRUGO ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_create_regset32 (char*,int ,struct dentry*,TYPE_1__*) ;
 char* dev_name (int ) ;
 int dsps_musb_regs ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int dsps_musb_dbg_init(struct musb *musb, struct dsps_glue *glue)
{
 struct dentry *root;
 char buf[128];

 sprintf(buf, "%s.dsps", dev_name(musb->controller));
 root = debugfs_create_dir(buf, ((void*)0));
 glue->dbgfs_root = root;

 glue->regset.regs = dsps_musb_regs;
 glue->regset.nregs = ARRAY_SIZE(dsps_musb_regs);
 glue->regset.base = musb->ctrl_base;

 debugfs_create_regset32("regdump", S_IRUGO, root, &glue->regset);
 return 0;
}
