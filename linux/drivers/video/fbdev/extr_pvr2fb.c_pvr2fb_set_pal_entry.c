
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2fb_par {scalar_t__ mmio_base; } ;


 int fb_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void pvr2fb_set_pal_entry(struct pvr2fb_par *par,
     unsigned int regno,
     unsigned int val)
{
 fb_writel(val, par->mmio_base + 0x1000 + (4 * regno));
}
