
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct tridentfb_par {scalar_t__ io_virt; } ;


 int fb_readl (scalar_t__) ;

__attribute__((used)) static inline u32 readmmr(struct tridentfb_par *par, u16 r)
{
 return fb_readl(par->io_virt + r);
}
