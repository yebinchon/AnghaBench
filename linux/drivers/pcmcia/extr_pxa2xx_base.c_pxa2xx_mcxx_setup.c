
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static inline u_int pxa2xx_mcxx_setup(u_int pcmcia_cycle_ns,
          u_int mem_clk_10khz)
{
 u_int code = pcmcia_cycle_ns * mem_clk_10khz;
 return (code / 100000) + ((code % 100000) ? 1 : 0) - 1;
}
