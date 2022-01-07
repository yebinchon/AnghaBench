
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct omapfb2_mem_region* vm_private_data; } ;
struct omapfb2_mem_region {int map_count; } ;


 int atomic_dec (int *) ;
 int omapfb_get_mem_region (struct omapfb2_mem_region*) ;
 int omapfb_put_mem_region (struct omapfb2_mem_region*) ;

__attribute__((used)) static void mmap_user_close(struct vm_area_struct *vma)
{
 struct omapfb2_mem_region *rg = vma->vm_private_data;

 omapfb_get_mem_region(rg);
 atomic_dec(&rg->map_count);
 omapfb_put_mem_region(rg);
}
