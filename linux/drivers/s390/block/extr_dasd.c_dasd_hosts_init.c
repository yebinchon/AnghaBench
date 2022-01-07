
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
struct dasd_device {struct dentry* hosts_dentry; } ;


 int IS_ERR (struct dentry*) ;
 int S_IFREG ;
 int S_IRUSR ;
 int dasd_hosts_fops ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct dasd_device*,int *) ;

__attribute__((used)) static void dasd_hosts_init(struct dentry *base_dentry,
       struct dasd_device *device)
{
 struct dentry *pde;
 umode_t mode;

 if (!base_dentry)
  return;

 mode = S_IRUSR | S_IFREG;
 pde = debugfs_create_file("host_access_list", mode, base_dentry,
      device, &dasd_hosts_fops);
 if (pde && !IS_ERR(pde))
  device->hosts_dentry = pde;
}
