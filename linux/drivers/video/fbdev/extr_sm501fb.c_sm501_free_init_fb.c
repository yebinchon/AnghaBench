
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {struct fb_info** fb; } ;
struct fb_info {int cmap; } ;
typedef enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;


 int fb_dealloc_cmap (int *) ;

__attribute__((used)) static void sm501_free_init_fb(struct sm501fb_info *info,
    enum sm501_controller head)
{
 struct fb_info *fbi = info->fb[head];

 if (!fbi)
  return;

 fb_dealloc_cmap(&fbi->cmap);
}
