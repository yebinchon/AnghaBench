
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ufs_ref_clk_freq { ____Placeholder_ufs_ref_clk_freq } ufs_ref_clk_freq ;
struct TYPE_2__ {long freq_hz; int val; } ;


 int REF_CLK_FREQ_INVAL ;
 TYPE_1__* ufs_ref_clk_freqs ;

__attribute__((used)) static enum ufs_ref_clk_freq
ufs_get_bref_clk_from_hz(unsigned long freq)
{
 int i;

 for (i = 0; ufs_ref_clk_freqs[i].freq_hz; i++)
  if (ufs_ref_clk_freqs[i].freq_hz == freq)
   return ufs_ref_clk_freqs[i].val;

 return REF_CLK_FREQ_INVAL;
}
