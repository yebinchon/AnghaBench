
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_info {int num_areas; int * vram; } ;


 int vmlfb_free_vram_area (int *) ;

__attribute__((used)) static void vmlfb_free_vram(struct vml_info *vinfo)
{
 int i;

 for (i = 0; i < vinfo->num_areas; ++i) {
  vmlfb_free_vram_area(&vinfo->vram[i]);
 }
 vinfo->num_areas = 0;
}
