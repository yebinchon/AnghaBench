
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_bios_node {int handle; } ;


 int EIO ;
 int pnpbios_dont_use_current_config ;
 int pnpbios_proc_fops ;
 scalar_t__ proc_create_data (char*,int,int ,int *,void*) ;
 int proc_pnp ;
 int proc_pnp_boot ;
 int sprintf (char*,char*,int) ;

int pnpbios_interface_attach_device(struct pnp_bios_node *node)
{
 char name[3];

 sprintf(name, "%02x", node->handle);

 if (!proc_pnp)
  return -EIO;
 if (!pnpbios_dont_use_current_config) {
  proc_create_data(name, 0644, proc_pnp, &pnpbios_proc_fops,
     (void *)(long)(node->handle));
 }

 if (!proc_pnp_boot)
  return -EIO;
 if (proc_create_data(name, 0644, proc_pnp_boot, &pnpbios_proc_fops,
        (void *)(long)(node->handle + 0x100)))
  return 0;
 return -EIO;
}
