
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_master_resource {int lock; } ;


 int __fake_master_get (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int *,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fake_master_get(struct vme_master_resource *image, int *enabled,
  unsigned long long *vme_base, unsigned long long *size,
  u32 *aspace, u32 *cycle, u32 *dwidth)
{
 int retval;

 spin_lock(&image->lock);

 retval = __fake_master_get(image, enabled, vme_base, size, aspace,
   cycle, dwidth);

 spin_unlock(&image->lock);

 return retval;
}
