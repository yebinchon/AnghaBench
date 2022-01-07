
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_debugfs_ops {int name; } ;
struct qedi_dbg_ctx {int host_no; int bdf_dentry; } ;
struct file_operations {int dummy; } ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (int ,int,int ,struct qedi_dbg_ctx*,struct file_operations const*) ;
 int qedi_dbg_root ;
 int sprintf (char*,char*,int) ;

void
qedi_dbg_host_init(struct qedi_dbg_ctx *qedi,
     const struct qedi_debugfs_ops *dops,
     const struct file_operations *fops)
{
 char host_dirname[32];

 sprintf(host_dirname, "host%u", qedi->host_no);
 qedi->bdf_dentry = debugfs_create_dir(host_dirname, qedi_dbg_root);

 while (dops) {
  if (!(dops->name))
   break;

  debugfs_create_file(dops->name, 0600, qedi->bdf_dentry, qedi,
        fops);
  dops++;
  fops++;
 }
}
