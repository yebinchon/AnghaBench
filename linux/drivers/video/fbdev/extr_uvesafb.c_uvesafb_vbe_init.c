
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_par {scalar_t__ ypan; scalar_t__ pmi_setpal; int nocrtc; } ;
struct uvesafb_ktask {int dummy; } ;
struct fb_info {int modelist; struct uvesafb_par* par; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int _PAGE_NX ;
 int __supported_pte_mask ;
 int nocrtc ;
 scalar_t__ pmi_setpal ;
 int pr_warn (char*) ;
 int uvesafb_free (struct uvesafb_ktask*) ;
 struct uvesafb_ktask* uvesafb_prep () ;
 int uvesafb_vbe_getinfo (struct uvesafb_ktask*,struct uvesafb_par*) ;
 int uvesafb_vbe_getmodes (struct uvesafb_ktask*,struct uvesafb_par*) ;
 int uvesafb_vbe_getmonspecs (struct uvesafb_ktask*,struct fb_info*) ;
 int uvesafb_vbe_getpmi (struct uvesafb_ktask*,struct uvesafb_par*) ;
 int uvesafb_vbe_getstatesize (struct uvesafb_ktask*,struct uvesafb_par*) ;
 scalar_t__ ypan ;

__attribute__((used)) static int uvesafb_vbe_init(struct fb_info *info)
{
 struct uvesafb_ktask *task = ((void*)0);
 struct uvesafb_par *par = info->par;
 int err;

 task = uvesafb_prep();
 if (!task)
  return -ENOMEM;

 err = uvesafb_vbe_getinfo(task, par);
 if (err)
  goto out;

 err = uvesafb_vbe_getmodes(task, par);
 if (err)
  goto out;

 par->nocrtc = nocrtc;
 par->pmi_setpal = par->ypan = 0;


 INIT_LIST_HEAD(&info->modelist);
 uvesafb_vbe_getmonspecs(task, info);
 uvesafb_vbe_getstatesize(task, par);

out: uvesafb_free(task);
 return err;
}
