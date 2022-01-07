
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvesafb_par {int ref_count; int vbe_state_orig; } ;
struct TYPE_3__ {int eax; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct uvesafb_ktask {TYPE_2__ t; } ;
struct fb_info {struct uvesafb_par* par; } ;


 int EINVAL ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int uvesafb_exec (struct uvesafb_ktask*) ;
 int uvesafb_free (struct uvesafb_ktask*) ;
 struct uvesafb_ktask* uvesafb_prep () ;
 int uvesafb_vbe_state_restore (struct uvesafb_par*,int ) ;

__attribute__((used)) static int uvesafb_release(struct fb_info *info, int user)
{
 struct uvesafb_ktask *task = ((void*)0);
 struct uvesafb_par *par = info->par;
 int cnt = atomic_read(&par->ref_count);

 if (!cnt)
  return -EINVAL;

 if (cnt != 1)
  goto out;

 task = uvesafb_prep();
 if (!task)
  goto out;


 task->t.regs.eax = 0x0003;
 uvesafb_exec(task);





 uvesafb_vbe_state_restore(par, par->vbe_state_orig);
out:
 atomic_dec(&par->ref_count);
 uvesafb_free(task);
 return 0;
}
