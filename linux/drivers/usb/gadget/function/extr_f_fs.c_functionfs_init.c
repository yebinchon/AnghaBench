
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER () ;
 int ffs_fs_type ;
 scalar_t__ likely (int) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int register_filesystem (int *) ;

__attribute__((used)) static int functionfs_init(void)
{
 int ret;

 ENTER();

 ret = register_filesystem(&ffs_fs_type);
 if (likely(!ret))
  pr_info("file system registered\n");
 else
  pr_err("failed registering file system (%d)\n", ret);

 return ret;
}
