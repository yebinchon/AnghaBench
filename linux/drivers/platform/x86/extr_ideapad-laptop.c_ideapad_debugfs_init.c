
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {struct dentry* debug; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int debugfs_cfg_fops ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct ideapad_private*,int *) ;
 int debugfs_status_fops ;

__attribute__((used)) static void ideapad_debugfs_init(struct ideapad_private *priv)
{
 struct dentry *dir;

 dir = debugfs_create_dir("ideapad", ((void*)0));
 priv->debug = dir;

 debugfs_create_file("cfg", S_IRUGO, dir, priv, &debugfs_cfg_fops);
 debugfs_create_file("status", S_IRUGO, dir, priv, &debugfs_status_fops);
}
