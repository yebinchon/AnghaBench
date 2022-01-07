
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ufs_hba {size_t dev_ref_clk_freq; int dev; } ;
struct TYPE_2__ {int freq_hz; } ;


 int QUERY_ATTR_IDN_REF_CLK_FREQ ;
 int UPIU_QUERY_OPCODE_READ_ATTR ;
 int UPIU_QUERY_OPCODE_WRITE_ATTR ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 TYPE_1__* ufs_ref_clk_freqs ;
 int ufshcd_query_attr_retry (struct ufs_hba*,int ,int ,int ,int ,size_t*) ;

__attribute__((used)) static int ufshcd_set_dev_ref_clk(struct ufs_hba *hba)
{
 int err;
 u32 ref_clk;
 u32 freq = hba->dev_ref_clk_freq;

 err = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_READ_ATTR,
   QUERY_ATTR_IDN_REF_CLK_FREQ, 0, 0, &ref_clk);

 if (err) {
  dev_err(hba->dev, "failed reading bRefClkFreq. err = %d\n",
   err);
  goto out;
 }

 if (ref_clk == freq)
  goto out;

 err = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
   QUERY_ATTR_IDN_REF_CLK_FREQ, 0, 0, &freq);

 if (err) {
  dev_err(hba->dev, "bRefClkFreq setting to %lu Hz failed\n",
   ufs_ref_clk_freqs[freq].freq_hz);
  goto out;
 }

 dev_dbg(hba->dev, "bRefClkFreq setting to %lu Hz succeeded\n",
   ufs_ref_clk_freqs[freq].freq_hz);

out:
 return err;
}
