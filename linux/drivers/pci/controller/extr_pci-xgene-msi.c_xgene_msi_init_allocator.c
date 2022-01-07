
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi_group {int dummy; } ;
struct xgene_msi {int msi_groups; int bitmap_lock; int bitmap; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_HW_IRQS ;
 int NR_MSI_VEC ;
 int kcalloc (int ,int,int ) ;
 int kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int xgene_msi_init_allocator(struct xgene_msi *xgene_msi)
{
 int size = BITS_TO_LONGS(NR_MSI_VEC) * sizeof(long);

 xgene_msi->bitmap = kzalloc(size, GFP_KERNEL);
 if (!xgene_msi->bitmap)
  return -ENOMEM;

 mutex_init(&xgene_msi->bitmap_lock);

 xgene_msi->msi_groups = kcalloc(NR_HW_IRQS,
     sizeof(struct xgene_msi_group),
     GFP_KERNEL);
 if (!xgene_msi->msi_groups)
  return -ENOMEM;

 return 0;
}
