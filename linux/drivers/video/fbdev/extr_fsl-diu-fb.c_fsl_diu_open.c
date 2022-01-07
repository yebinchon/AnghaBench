
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfb_info {scalar_t__ index; int count; int parent; } ;
struct fb_info {int var; struct mfb_info* par; } ;
struct TYPE_2__ {int (* release_bootmem ) () ;} ;


 scalar_t__ PLANE0 ;
 int diu_lock ;
 TYPE_1__ diu_ops ;
 int fsl_diu_check_var (int *,struct fb_info*) ;
 int fsl_diu_enable_interrupts (int ) ;
 int fsl_diu_enable_panel (struct fb_info*) ;
 int fsl_diu_set_par (struct fb_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;

__attribute__((used)) static int fsl_diu_open(struct fb_info *info, int user)
{
 struct mfb_info *mfbi = info->par;
 int res = 0;


 if ((mfbi->index == PLANE0) && diu_ops.release_bootmem)
  diu_ops.release_bootmem();

 spin_lock(&diu_lock);
 mfbi->count++;
 if (mfbi->count == 1) {
  fsl_diu_check_var(&info->var, info);
  res = fsl_diu_set_par(info);
  if (res < 0)
   mfbi->count--;
  else {
   fsl_diu_enable_interrupts(mfbi->parent);
   fsl_diu_enable_panel(info);
  }
 }

 spin_unlock(&diu_lock);
 return res;
}
