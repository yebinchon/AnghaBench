
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_thermal_priv {int thermal; int dev; scalar_t__ tmon_base; } ;


 scalar_t__ AVS_TMON_STATUS ;
 int AVS_TMON_STATUS_data_msk ;
 int AVS_TMON_STATUS_data_shift ;
 int AVS_TMON_STATUS_valid_msk ;
 int EIO ;
 int __raw_readl (scalar_t__) ;
 long avs_tmon_code_to_temp (int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int brcmstb_get_temp(void *data, int *temp)
{
 struct brcmstb_thermal_priv *priv = data;
 u32 val;
 long t;

 val = __raw_readl(priv->tmon_base + AVS_TMON_STATUS);

 if (!(val & AVS_TMON_STATUS_valid_msk)) {
  dev_err(priv->dev, "reading not valid\n");
  return -EIO;
 }

 val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;

 t = avs_tmon_code_to_temp(priv->thermal, val);
 if (t < 0)
  *temp = 0;
 else
  *temp = t;

 return 0;
}
