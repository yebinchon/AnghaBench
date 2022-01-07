
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writel (unsigned int,scalar_t__) ;
 scalar_t__ da8xx_fb_reg_base ;

__attribute__((used)) static void lcdc_write(unsigned int val, unsigned int addr)
{
 __raw_writel(val, da8xx_fb_reg_base + (addr));
}
