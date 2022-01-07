
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvesafb_par {int ref_count; int * vbe_state_orig; scalar_t__ vbe_state_size; } ;
struct fb_info {struct uvesafb_par* par; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int pr_warn (char*,int ) ;
 int * uvesafb_vbe_state_save (struct uvesafb_par*) ;

__attribute__((used)) static int uvesafb_open(struct fb_info *info, int user)
{
 struct uvesafb_par *par = info->par;
 int cnt = atomic_read(&par->ref_count);
 u8 *buf = ((void*)0);

 if (!cnt && par->vbe_state_size) {
  buf = uvesafb_vbe_state_save(par);
  if (IS_ERR(buf)) {
   pr_warn("save hardware state failed, error code is %ld!\n",
    PTR_ERR(buf));
  } else {
   par->vbe_state_orig = buf;
  }
 }

 atomic_inc(&par->ref_count);
 return 0;
}
