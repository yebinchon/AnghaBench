
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fb_info {int flags; TYPE_1__ fix; } ;


 int ENOSYS ;
 int FBINFO_BE_MATH ;
 int FBINFO_FOREIGN_ENDIAN ;
 scalar_t__ fb_be_math (struct fb_info*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int fb_check_foreignness(struct fb_info *fi)
{
 const bool foreign_endian = fi->flags & FBINFO_FOREIGN_ENDIAN;

 fi->flags &= ~FBINFO_FOREIGN_ENDIAN;




 fi->flags |= foreign_endian ? FBINFO_BE_MATH : 0;


 if (fi->flags & FBINFO_BE_MATH && !fb_be_math(fi)) {
  pr_err("%s: enable CONFIG_FB_BIG_ENDIAN to "
         "support this framebuffer\n", fi->fix.id);
  return -ENOSYS;
 } else if (!(fi->flags & FBINFO_BE_MATH) && fb_be_math(fi)) {
  pr_err("%s: enable CONFIG_FB_LITTLE_ENDIAN to "
         "support this framebuffer\n", fi->fix.id);
  return -ENOSYS;
 }

 return 0;
}
