
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omapfb_info {int id; struct omapfb2_device* fbdev; } ;
struct omapfb2_mem_region {int dummy; } ;
struct omapfb2_device {int num_fbs; struct omapfb2_mem_region* regions; } ;


 int OMAPFB_MEM_IDX_ENABLED ;
 int OMAPFB_MEM_IDX_MASK ;

__attribute__((used)) static struct omapfb2_mem_region *get_mem_region(struct omapfb_info *ofbi,
       u8 mem_idx)
{
 struct omapfb2_device *fbdev = ofbi->fbdev;

 if (mem_idx & OMAPFB_MEM_IDX_ENABLED)
  mem_idx &= OMAPFB_MEM_IDX_MASK;
 else
  mem_idx = ofbi->id;

 if (mem_idx >= fbdev->num_fbs)
  return ((void*)0);

 return &fbdev->regions[mem_idx];
}
