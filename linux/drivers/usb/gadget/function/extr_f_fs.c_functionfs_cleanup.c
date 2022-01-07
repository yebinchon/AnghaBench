
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER () ;
 int ffs_fs_type ;
 int pr_info (char*) ;
 int unregister_filesystem (int *) ;

__attribute__((used)) static void functionfs_cleanup(void)
{
 ENTER();

 pr_info("unloading\n");
 unregister_filesystem(&ffs_fs_type);
}
