
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long calc_core_clk_44xx(unsigned long pclk, u16 width,
  u16 height, u16 out_width, u16 out_height, bool mem_to_mem)
{






 if (mem_to_mem)
  return 1;

 if (width > out_width)
  return DIV_ROUND_UP(pclk, out_width) * width;
 else
  return pclk;
}
