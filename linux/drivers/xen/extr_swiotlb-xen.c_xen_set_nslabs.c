
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (int,int ) ;
 int IO_TLB_SEGSIZE ;
 int IO_TLB_SHIFT ;
 int xen_io_tlb_nslabs ;

__attribute__((used)) static unsigned long xen_set_nslabs(unsigned long nr_tbl)
{
 if (!nr_tbl) {
  xen_io_tlb_nslabs = (64 * 1024 * 1024 >> IO_TLB_SHIFT);
  xen_io_tlb_nslabs = ALIGN(xen_io_tlb_nslabs, IO_TLB_SEGSIZE);
 } else
  xen_io_tlb_nslabs = nr_tbl;

 return xen_io_tlb_nslabs << IO_TLB_SHIFT;
}
