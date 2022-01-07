
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t smem_len; scalar_t__ smem_start; } ;
struct fb_info {int mm_lock; TYPE_1__ fix; int * screen_base; } ;


 int free_pages_exact (void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unmap_video_memory(struct fb_info *info)
{
 void *p = info->screen_base;
 size_t l = info->fix.smem_len;

 mutex_lock(&info->mm_lock);
 info->screen_base = ((void*)0);
 info->fix.smem_start = 0;
 info->fix.smem_len = 0;
 mutex_unlock(&info->mm_lock);

 if (p)
  free_pages_exact(p, l);
}
