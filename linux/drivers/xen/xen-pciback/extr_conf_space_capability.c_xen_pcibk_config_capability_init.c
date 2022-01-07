
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_capability (int *) ;
 int xen_pcibk_config_capability_pm ;
 int xen_pcibk_config_capability_vpd ;

int xen_pcibk_config_capability_init(void)
{
 register_capability(&xen_pcibk_config_capability_vpd);
 register_capability(&xen_pcibk_config_capability_pm);

 return 0;
}
