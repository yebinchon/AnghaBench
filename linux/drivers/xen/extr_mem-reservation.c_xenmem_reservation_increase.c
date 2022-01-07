
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_pfn_t ;
struct xen_memory_reservation {int nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;


 int DOMID_SELF ;
 int EXTENT_ORDER ;
 int HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 int XENMEM_populate_physmap ;
 int set_xen_guest_handle (int ,int *) ;

int xenmem_reservation_increase(int count, xen_pfn_t *frames)
{
 struct xen_memory_reservation reservation = {
  .address_bits = 0,
  .extent_order = EXTENT_ORDER,
  .domid = DOMID_SELF
 };


 set_xen_guest_handle(reservation.extent_start, frames);
 reservation.nr_extents = count;
 return HYPERVISOR_memory_op(XENMEM_populate_physmap, &reservation);
}
