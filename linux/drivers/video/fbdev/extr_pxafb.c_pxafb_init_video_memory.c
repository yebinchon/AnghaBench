
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int smem_len; int smem_start; } ;
struct TYPE_4__ {int * screen_base; TYPE_1__ fix; } ;
struct pxafb_info {int video_mem_size; int * video_mem; TYPE_2__ fb; int video_mem_phys; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int) ;
 int __GFP_ZERO ;
 int * alloc_pages_exact (int,int) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static int pxafb_init_video_memory(struct pxafb_info *fbi)
{
 int size = PAGE_ALIGN(fbi->video_mem_size);

 fbi->video_mem = alloc_pages_exact(size, GFP_KERNEL | __GFP_ZERO);
 if (fbi->video_mem == ((void*)0))
  return -ENOMEM;

 fbi->video_mem_phys = virt_to_phys(fbi->video_mem);
 fbi->video_mem_size = size;

 fbi->fb.fix.smem_start = fbi->video_mem_phys;
 fbi->fb.fix.smem_len = fbi->video_mem_size;
 fbi->fb.screen_base = fbi->video_mem;

 return fbi->video_mem ? 0 : -ENOMEM;
}
