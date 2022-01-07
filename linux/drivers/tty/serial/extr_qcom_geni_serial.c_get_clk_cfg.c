
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned long*) ;
 unsigned long* root_freq ;

__attribute__((used)) static unsigned long get_clk_cfg(unsigned long clk_freq)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(root_freq); i++) {
  if (!(root_freq[i] % clk_freq))
   return root_freq[i];
 }
 return 0;
}
