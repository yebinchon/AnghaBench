
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u32 ;


 int do_div (unsigned int,int) ;

__attribute__((used)) static unsigned long ar933x_uart_get_baud(unsigned int clk,
       unsigned int scale,
       unsigned int step)
{
 u64 t;
 u32 div;

 div = (2 << 16) * (scale + 1);
 t = clk;
 t *= step;
 t += (div / 2);
 do_div(t, div);

 return t;
}
