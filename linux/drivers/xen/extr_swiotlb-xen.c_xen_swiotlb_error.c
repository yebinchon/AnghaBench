
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xen_swiotlb_err { ____Placeholder_xen_swiotlb_err } xen_swiotlb_err ;





__attribute__((used)) static const char *xen_swiotlb_error(enum xen_swiotlb_err err)
{
 switch (err) {
 case 128:
  return "Cannot allocate Xen-SWIOTLB buffer\n";
 case 129:
  return "Failed to get contiguous memory for DMA from Xen!\n" "You either: don't have the permissions, do not have" " enough free memory under 4GB, or the hypervisor memory" " is too fragmented!";



 default:
  break;
 }
 return "";
}
