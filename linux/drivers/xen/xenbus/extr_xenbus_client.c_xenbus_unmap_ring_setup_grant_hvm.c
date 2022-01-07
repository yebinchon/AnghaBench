
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unmap_ring_vfree_hvm {unsigned long* addrs; size_t idx; } ;


 scalar_t__ gfn_to_virt (unsigned long) ;

__attribute__((used)) static void xenbus_unmap_ring_setup_grant_hvm(unsigned long gfn,
           unsigned int goffset,
           unsigned int len,
           void *data)
{
 struct unmap_ring_vfree_hvm *info = data;

 info->addrs[info->idx] = (unsigned long)gfn_to_virt(gfn);

 info->idx++;
}
