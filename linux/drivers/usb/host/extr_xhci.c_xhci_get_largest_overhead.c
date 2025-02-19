
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_interval_bw {scalar_t__* overhead; } ;


 unsigned int FS_OVERHEAD ;
 size_t FS_OVERHEAD_TYPE ;
 unsigned int HS_OVERHEAD ;
 unsigned int LS_OVERHEAD ;
 size_t LS_OVERHEAD_TYPE ;

__attribute__((used)) static unsigned int
xhci_get_largest_overhead(struct xhci_interval_bw *interval_bw)
{
 if (interval_bw->overhead[LS_OVERHEAD_TYPE])
  return LS_OVERHEAD;
 if (interval_bw->overhead[FS_OVERHEAD_TYPE])
  return FS_OVERHEAD;
 return HS_OVERHEAD;
}
