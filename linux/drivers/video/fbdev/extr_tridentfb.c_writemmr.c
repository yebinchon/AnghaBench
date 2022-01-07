
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct tridentfb_par {scalar_t__ io_virt; } ;


 int fb_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void writemmr(struct tridentfb_par *par, u16 r, u32 v)
{
 fb_writel(v, par->io_virt + r);
}
