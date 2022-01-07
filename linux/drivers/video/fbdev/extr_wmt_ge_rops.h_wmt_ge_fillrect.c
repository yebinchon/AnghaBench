
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_fillrect {int dummy; } ;


 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static inline void wmt_ge_fillrect(struct fb_info *p,
        const struct fb_fillrect *rect)
{
 sys_fillrect(p, rect);
}
