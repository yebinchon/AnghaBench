
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {struct dentry* debugfs_root; int controller; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int S_IWUSR ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct musb*,int *) ;
 int dev_name (int ) ;
 int musb_regdump_fops ;
 int musb_softconnect_fops ;
 int musb_test_mode_fops ;

void musb_init_debugfs(struct musb *musb)
{
 struct dentry *root;

 root = debugfs_create_dir(dev_name(musb->controller), ((void*)0));
 musb->debugfs_root = root;

 debugfs_create_file("regdump", S_IRUGO, root, musb, &musb_regdump_fops);
 debugfs_create_file("testmode", S_IRUGO | S_IWUSR, root, musb,
       &musb_test_mode_fops);
 debugfs_create_file("softconnect", S_IRUGO | S_IWUSR, root, musb,
       &musb_softconnect_fops);
}
