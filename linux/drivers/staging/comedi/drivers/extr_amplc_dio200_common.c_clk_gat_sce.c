
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char clk_gat_sce(unsigned int which, unsigned int chan,
     unsigned int source)
{
 return (which << 5) | (chan << 3) |
        ((source & 030) << 3) | (source & 007);
}
