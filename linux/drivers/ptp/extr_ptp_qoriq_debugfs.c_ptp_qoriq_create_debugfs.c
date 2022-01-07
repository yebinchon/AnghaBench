
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int dev; struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file_unsafe (char*,int,struct dentry*,struct ptp_qoriq*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int ptp_qoriq_fiper1_fops ;
 int ptp_qoriq_fiper2_fops ;

void ptp_qoriq_create_debugfs(struct ptp_qoriq *ptp_qoriq)
{
 struct dentry *root;

 root = debugfs_create_dir(dev_name(ptp_qoriq->dev), ((void*)0));
 if (IS_ERR(root))
  return;
 if (!root)
  goto err_root;

 ptp_qoriq->debugfs_root = root;

 if (!debugfs_create_file_unsafe("fiper1-loopback", 0600, root,
     ptp_qoriq, &ptp_qoriq_fiper1_fops))
  goto err_node;
 if (!debugfs_create_file_unsafe("fiper2-loopback", 0600, root,
     ptp_qoriq, &ptp_qoriq_fiper2_fops))
  goto err_node;
 return;

err_node:
 debugfs_remove_recursive(root);
 ptp_qoriq->debugfs_root = ((void*)0);
err_root:
 dev_err(ptp_qoriq->dev, "failed to initialize debugfs\n");
}
