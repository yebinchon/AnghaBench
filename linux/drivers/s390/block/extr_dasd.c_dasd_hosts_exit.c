
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int * hosts_dentry; } ;


 int debugfs_remove (int *) ;

__attribute__((used)) static void dasd_hosts_exit(struct dasd_device *device)
{
 debugfs_remove(device->hosts_dentry);
 device->hosts_dentry = ((void*)0);
}
