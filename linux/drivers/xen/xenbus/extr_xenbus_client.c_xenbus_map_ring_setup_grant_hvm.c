
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_ring_valloc_hvm {unsigned long* phys_addrs; size_t idx; unsigned long* addrs; } ;


 scalar_t__ gfn_to_virt (unsigned long) ;

__attribute__((used)) static void xenbus_map_ring_setup_grant_hvm(unsigned long gfn,
         unsigned int goffset,
         unsigned int len,
         void *data)
{
 struct map_ring_valloc_hvm *info = data;
 unsigned long vaddr = (unsigned long)gfn_to_virt(gfn);

 info->phys_addrs[info->idx] = vaddr;
 info->addrs[info->idx] = vaddr;

 info->idx++;
}
