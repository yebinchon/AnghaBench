
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lxfb_par {scalar_t__ vp_regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t read_vp(struct lxfb_par *par, int reg)
{
 return readl(par->vp_regs + 8*reg);
}
