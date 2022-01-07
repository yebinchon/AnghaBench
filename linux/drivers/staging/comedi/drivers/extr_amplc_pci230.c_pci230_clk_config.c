
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int pci230_clk_config(unsigned int chan, unsigned int src)
{
 return ((chan & 3) << 3) | (src & 7);
}
