
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int nfcsim_debugfs_root ;
 int pr_err (char*) ;

__attribute__((used)) static void nfcsim_debugfs_init(void)
{
 nfcsim_debugfs_root = debugfs_create_dir("nfcsim", ((void*)0));

 if (!nfcsim_debugfs_root)
  pr_err("Could not create debugfs entry\n");

}
