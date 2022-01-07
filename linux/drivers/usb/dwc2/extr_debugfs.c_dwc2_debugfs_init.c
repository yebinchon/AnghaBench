
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_hsotg {struct dentry* debug_root; TYPE_1__* regset; int regs; int dev; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int base; int nregs; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct dwc2_hsotg*,int *) ;
 int debugfs_create_regset32 (char*,int,struct dentry*,TYPE_1__*) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_name (int ) ;
 TYPE_1__* devm_kzalloc (int ,int,int ) ;
 int dr_mode_fops ;
 int dwc2_hsotg_create_debug (struct dwc2_hsotg*) ;
 int dwc2_regs ;
 int hw_params_fops ;
 int params_fops ;

int dwc2_debugfs_init(struct dwc2_hsotg *hsotg)
{
 int ret;
 struct dentry *root;

 root = debugfs_create_dir(dev_name(hsotg->dev), ((void*)0));
 hsotg->debug_root = root;

 debugfs_create_file("params", 0444, root, hsotg, &params_fops);
 debugfs_create_file("hw_params", 0444, root, hsotg, &hw_params_fops);
 debugfs_create_file("dr_mode", 0444, root, hsotg, &dr_mode_fops);


 dwc2_hsotg_create_debug(hsotg);

 hsotg->regset = devm_kzalloc(hsotg->dev, sizeof(*hsotg->regset),
        GFP_KERNEL);
 if (!hsotg->regset) {
  ret = -ENOMEM;
  goto err;
 }

 hsotg->regset->regs = dwc2_regs;
 hsotg->regset->nregs = ARRAY_SIZE(dwc2_regs);
 hsotg->regset->base = hsotg->regs;

 debugfs_create_regset32("regdump", 0444, root, hsotg->regset);

 return 0;
err:
 debugfs_remove_recursive(hsotg->debug_root);
 return ret;
}
