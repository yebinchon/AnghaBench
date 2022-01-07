
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __raw_readl (scalar_t__) ;
 scalar_t__ da8xx_fb_reg_base ;

__attribute__((used)) static unsigned int lcdc_read(unsigned int addr)
{
 return (unsigned int)__raw_readl(da8xx_fb_reg_base + (addr));
}
