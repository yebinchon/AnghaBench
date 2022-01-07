
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int CLK_10MHZ ;
 unsigned int CLK_1KHZ ;
 unsigned int pci230_divide_ns (int ,int ,unsigned int) ;
 int * pci230_timebase ;

__attribute__((used)) static unsigned int pci230_choose_clk_count(u64 ns, unsigned int *count,
         unsigned int flags)
{
 unsigned int clk_src, cnt;

 for (clk_src = CLK_10MHZ;; clk_src++) {
  cnt = pci230_divide_ns(ns, pci230_timebase[clk_src], flags);
  if (cnt <= 65536 || clk_src == CLK_1KHZ)
   break;
 }
 *count = cnt;
 return clk_src;
}
