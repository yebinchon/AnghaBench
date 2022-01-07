
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kern_unmount (int ) ;
 int test_mnt ;
 int test_type ;
 int unregister_filesystem (int *) ;

__attribute__((used)) static void btrfs_destroy_test_fs(void)
{
 kern_unmount(test_mnt);
 unregister_filesystem(&test_type);
}
