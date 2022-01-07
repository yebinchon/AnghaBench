
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vml_info {unsigned int num_areas; unsigned long vram_start; TYPE_1__* vram; } ;
struct TYPE_2__ {unsigned long phys; unsigned long size; } ;


 int EINVAL ;

__attribute__((used)) static int vmlfb_vram_offset(struct vml_info *vinfo, unsigned long offset)
{
 unsigned long aoffset;
 unsigned i;

 for (i = 0; i < vinfo->num_areas; ++i) {
  aoffset = offset - (vinfo->vram[i].phys - vinfo->vram_start);

  if (aoffset < vinfo->vram[i].size) {
   return 0;
  }
 }

 return -EINVAL;
}
