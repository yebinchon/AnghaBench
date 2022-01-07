
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fbtft_par {int dirty_lines_start; int dirty_lines_end; int dirty_lock; } ;
struct TYPE_2__ {int yres; } ;
struct fb_info {int deferred_work; TYPE_1__ var; struct fb_deferred_io* fbdefio; struct fbtft_par* par; } ;
struct fb_deferred_io {int delay; } ;


 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fbtft_mkdirty(struct fb_info *info, int y, int height)
{
 struct fbtft_par *par = info->par;
 struct fb_deferred_io *fbdefio = info->fbdefio;


 if (y == -1) {
  y = 0;
  height = info->var.yres - 1;
 }


 spin_lock(&par->dirty_lock);
 if (y < par->dirty_lines_start)
  par->dirty_lines_start = y;
 if (y + height - 1 > par->dirty_lines_end)
  par->dirty_lines_end = y + height - 1;
 spin_unlock(&par->dirty_lock);


 schedule_delayed_work(&info->deferred_work, fbdefio->delay);
}
