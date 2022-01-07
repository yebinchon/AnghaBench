
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int mm_lock; int fix; int var; scalar_t__ par; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* encode_fix ) (int *,struct atafb_par*) ;int (* decode_var ) (int *,struct atafb_par*) ;} ;


 int ata_set_par (struct atafb_par*) ;
 TYPE_1__* fbhw ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int *,struct atafb_par*) ;
 int stub2 (int *,struct atafb_par*) ;

__attribute__((used)) static int atafb_set_par(struct fb_info *info)
{
 struct atafb_par *par = (struct atafb_par *)info->par;


 fbhw->decode_var(&info->var, par);
 mutex_lock(&info->mm_lock);
 fbhw->encode_fix(&info->fix, par);
 mutex_unlock(&info->mm_lock);


 ata_set_par(par);

 return 0;
}
