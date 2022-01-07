
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dwc3 {TYPE_1__* regset; struct dentry* root; int dev; scalar_t__ regs; int dbg_lsp_select; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ base; int nregs; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int CONFIG_USB_DWC3_DUAL_ROLE ;
 int CONFIG_USB_DWC3_GADGET ;
 scalar_t__ DWC3_GLOBALS_REGS_START ;
 int DWC3_LSP_MUX_UNSELECTED ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int S_IRUGO ;
 int S_IWUSR ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct dwc3*,int *) ;
 int debugfs_create_regset32 (char*,int,struct dentry*,TYPE_1__*) ;
 int dev_name (int ) ;
 int dwc3_debugfs_create_endpoint_dirs (struct dwc3*,struct dentry*) ;
 int dwc3_link_state_fops ;
 int dwc3_lsp_fops ;
 int dwc3_mode_fops ;
 int dwc3_regs ;
 int dwc3_testmode_fops ;
 TYPE_1__* kzalloc (int,int ) ;

void dwc3_debugfs_init(struct dwc3 *dwc)
{
 struct dentry *root;

 dwc->regset = kzalloc(sizeof(*dwc->regset), GFP_KERNEL);
 if (!dwc->regset)
  return;

 dwc->dbg_lsp_select = DWC3_LSP_MUX_UNSELECTED;

 dwc->regset->regs = dwc3_regs;
 dwc->regset->nregs = ARRAY_SIZE(dwc3_regs);
 dwc->regset->base = dwc->regs - DWC3_GLOBALS_REGS_START;

 root = debugfs_create_dir(dev_name(dwc->dev), ((void*)0));
 dwc->root = root;

 debugfs_create_regset32("regdump", S_IRUGO, root, dwc->regset);

 debugfs_create_file("lsp_dump", S_IRUGO | S_IWUSR, root, dwc,
       &dwc3_lsp_fops);

 if (IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)) {
  debugfs_create_file("mode", S_IRUGO | S_IWUSR, root, dwc,
        &dwc3_mode_fops);
 }

 if (IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE) ||
   IS_ENABLED(CONFIG_USB_DWC3_GADGET)) {
  debugfs_create_file("testmode", S_IRUGO | S_IWUSR, root, dwc,
        &dwc3_testmode_fops);
  debugfs_create_file("link_state", S_IRUGO | S_IWUSR, root, dwc,
        &dwc3_link_state_fops);
  dwc3_debugfs_create_endpoint_dirs(dwc, root);
 }
}
