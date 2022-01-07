
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {struct dentry* dbgfs_root; } ;
struct dentry {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct ssusb_mtk*,int *) ;
 int ssusb_mode_fops ;
 int ssusb_vbus_fops ;

void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
{
 struct dentry *root = ssusb->dbgfs_root;

 debugfs_create_file("mode", 0644, root, ssusb, &ssusb_mode_fops);
 debugfs_create_file("vbus", 0644, root, ssusb, &ssusb_vbus_fops);
}
