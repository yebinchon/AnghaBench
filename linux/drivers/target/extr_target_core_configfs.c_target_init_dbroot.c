
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;


 int DB_ROOT_LEN ;
 char* DB_ROOT_PREFERRED ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int S_ISDIR (int ) ;
 int db_root ;
 int db_root_stage ;
 TYPE_1__* file_inode (struct file*) ;
 int filp_close (struct file*,int *) ;
 struct file* filp_open (int ,int ,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int snprintf (int ,int ,char*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static void target_init_dbroot(void)
{
 struct file *fp;

 snprintf(db_root_stage, DB_ROOT_LEN, DB_ROOT_PREFERRED);
 fp = filp_open(db_root_stage, O_RDONLY, 0);
 if (IS_ERR(fp)) {
  pr_err("db_root: cannot open: %s\n", db_root_stage);
  return;
 }
 if (!S_ISDIR(file_inode(fp)->i_mode)) {
  filp_close(fp, ((void*)0));
  pr_err("db_root: not a valid directory: %s\n", db_root_stage);
  return;
 }
 filp_close(fp, ((void*)0));

 strncpy(db_root, db_root_stage, DB_ROOT_LEN);
 pr_debug("Target_Core_ConfigFS: db_root set to %s\n", db_root);
}
