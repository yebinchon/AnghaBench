
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_thermal_priv {int thermal; scalar_t__ tmon_base; } ;


 scalar_t__ AVS_TMON_TEMP_INT_CODE ;
 int __raw_readl (scalar_t__) ;
 int avs_tmon_code_to_temp (int ,int ) ;

__attribute__((used)) static int avs_tmon_get_intr_temp(struct brcmstb_thermal_priv *priv)
{
 u32 val;

 val = __raw_readl(priv->tmon_base + AVS_TMON_TEMP_INT_CODE);
 return avs_tmon_code_to_temp(priv->thermal, val);
}
