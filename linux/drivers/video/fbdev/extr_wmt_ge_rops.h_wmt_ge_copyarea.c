
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_copyarea {int dummy; } ;


 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static inline void wmt_ge_copyarea(struct fb_info *p,
         const struct fb_copyarea *area)
{
 sys_copyarea(p, area);
}
