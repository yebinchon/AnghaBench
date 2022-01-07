
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int AR933X_UART_MAX_SCALE ;
 int AR933X_UART_MAX_STEP ;
 int abs (scalar_t__) ;
 scalar_t__ ar933x_uart_get_baud (unsigned int,unsigned int,int) ;
 int do_div (int,unsigned int) ;

__attribute__((used)) static void ar933x_uart_get_scale_step(unsigned int clk,
           unsigned int baud,
           unsigned int *scale,
           unsigned int *step)
{
 unsigned int tscale;
 long min_diff;

 *scale = 0;
 *step = 0;

 min_diff = baud;
 for (tscale = 0; tscale < AR933X_UART_MAX_SCALE; tscale++) {
  u64 tstep;
  int diff;

  tstep = baud * (tscale + 1);
  tstep *= (2 << 16);
  do_div(tstep, clk);

  if (tstep > AR933X_UART_MAX_STEP)
   break;

  diff = abs(ar933x_uart_get_baud(clk, tscale, tstep) - baud);
  if (diff < min_diff) {
   min_diff = diff;
   *scale = tscale;
   *step = tstep;
  }
 }
}
