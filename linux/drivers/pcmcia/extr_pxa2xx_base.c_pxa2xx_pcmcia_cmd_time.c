
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static inline u_int pxa2xx_pcmcia_cmd_time(u_int mem_clk_10khz,
        u_int pcmcia_mcxx_asst)
{
 return (300000 * (pcmcia_mcxx_asst + 1) / mem_clk_10khz);
}
