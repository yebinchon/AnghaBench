
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pfn {int pfn; int ref_count; } ;
struct vfio_dma {int prot; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int put_pfn (int ,int ) ;
 int vfio_remove_from_pfn_list (struct vfio_dma*,struct vfio_pfn*) ;

__attribute__((used)) static int vfio_iova_put_vfio_pfn(struct vfio_dma *dma, struct vfio_pfn *vpfn)
{
 int ret = 0;

 if (atomic_dec_and_test(&vpfn->ref_count)) {
  ret = put_pfn(vpfn->pfn, dma->prot);
  vfio_remove_from_pfn_list(dma, vpfn);
 }
 return ret;
}
