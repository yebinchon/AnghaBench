
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev; int dev_ref_clk_freq; } ;
struct clk {int dummy; } ;


 int REF_CLK_FREQ_INVAL ;
 unsigned long clk_get_rate (struct clk*) ;
 int dev_err (int ,char*,unsigned long) ;
 int ufs_get_bref_clk_from_hz (unsigned long) ;

void ufshcd_parse_dev_ref_clk_freq(struct ufs_hba *hba, struct clk *refclk)
{
 unsigned long freq;

 freq = clk_get_rate(refclk);

 hba->dev_ref_clk_freq =
  ufs_get_bref_clk_from_hz(freq);

 if (hba->dev_ref_clk_freq == REF_CLK_FREQ_INVAL)
  dev_err(hba->dev,
  "invalid ref_clk setting = %ld\n", freq);
}
