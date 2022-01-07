
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int gnttab_init () ;
 int xen_domain () ;
 scalar_t__ xen_hvm_domain () ;
 int xen_pvh_domain () ;

__attribute__((used)) static int __gnttab_init(void)
{
 if (!xen_domain())
  return -ENODEV;


 if (xen_hvm_domain() && !xen_pvh_domain())
  return 0;

 return gnttab_init();
}
