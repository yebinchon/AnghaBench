
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static unsigned long calc_core_clk_34xx(unsigned long pclk, u16 width,
  u16 height, u16 out_width, u16 out_height, bool mem_to_mem)
{
 unsigned int hf, vf;






 if (width > 3 * out_width)
  hf = 4;
 else if (width > 2 * out_width)
  hf = 3;
 else if (width > out_width)
  hf = 2;
 else
  hf = 1;
 if (height > out_height)
  vf = 2;
 else
  vf = 1;

 return pclk * vf * hf;
}
