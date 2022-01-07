
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mfb_info {scalar_t__ count; struct fsl_diu_data* parent; } ;
struct fsl_diu_data {TYPE_2__* diu_reg; TYPE_1__* fsl_diu_info; } ;
struct fb_info {struct mfb_info* par; } ;
struct TYPE_4__ {int int_mask; } ;
struct TYPE_3__ {struct mfb_info* par; } ;


 int NUM_AOIS ;
 int diu_lock ;
 int fsl_diu_disable_panel (struct fb_info*) ;
 int out_be32 (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fsl_diu_release(struct fb_info *info, int user)
{
 struct mfb_info *mfbi = info->par;
 int res = 0;

 spin_lock(&diu_lock);
 mfbi->count--;
 if (mfbi->count == 0) {
  struct fsl_diu_data *data = mfbi->parent;
  bool disable = 1;
  int i;


  for (i = 0; i < NUM_AOIS; i++) {
   struct mfb_info *mi = data->fsl_diu_info[i].par;

   if (mi->count)
    disable = 0;
  }
  if (disable)
   out_be32(&data->diu_reg->int_mask, 0xffffffff);
  fsl_diu_disable_panel(info);
 }

 spin_unlock(&diu_lock);
 return res;
}
