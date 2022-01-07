
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_remove_from_physmap {unsigned long gpfn; int domid; } ;


 int DOMID_SELF ;
 int HYPERVISOR_memory_op (int ,struct xen_remove_from_physmap*) ;
 int XENMEM_remove_from_physmap ;

__attribute__((used)) static void unmap_gfn(unsigned long gfn, void *data)
{
 struct xen_remove_from_physmap xrp;

 xrp.domid = DOMID_SELF;
 xrp.gpfn = gfn;
 (void)HYPERVISOR_memory_op(XENMEM_remove_from_physmap, &xrp);
}
