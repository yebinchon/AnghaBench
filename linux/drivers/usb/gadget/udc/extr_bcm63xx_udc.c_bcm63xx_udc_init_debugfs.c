
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct bcm63xx_udc {struct dentry* debugfs_root; TYPE_1__ gadget; } ;


 int CONFIG_USB_GADGET_DEBUG_FS ;
 int IS_ENABLED (int ) ;
 int bcm63xx_iudma_dbg_fops ;
 int bcm63xx_usbd_dbg_fops ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct bcm63xx_udc*,int *) ;

__attribute__((used)) static void bcm63xx_udc_init_debugfs(struct bcm63xx_udc *udc)
{
 struct dentry *root;

 if (!IS_ENABLED(CONFIG_USB_GADGET_DEBUG_FS))
  return;

 root = debugfs_create_dir(udc->gadget.name, ((void*)0));
 udc->debugfs_root = root;

 debugfs_create_file("usbd", 0400, root, udc, &bcm63xx_usbd_dbg_fops);
 debugfs_create_file("iudma", 0400, root, udc, &bcm63xx_iudma_dbg_fops);
}
