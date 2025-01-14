
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_thermal_priv {int thermal; scalar_t__ tmon_base; } ;
struct avs_tmon_trip {int reg_msk; int reg_shift; scalar_t__ reg_offs; } ;
typedef enum avs_tmon_trip_type { ____Placeholder_avs_tmon_trip_type } avs_tmon_trip_type ;


 int __raw_readl (scalar_t__) ;
 int avs_tmon_code_to_temp (int ,int) ;
 struct avs_tmon_trip* avs_tmon_trips ;

__attribute__((used)) static int avs_tmon_get_trip_temp(struct brcmstb_thermal_priv *priv,
      enum avs_tmon_trip_type type)
{
 struct avs_tmon_trip *trip = &avs_tmon_trips[type];
 u32 val = __raw_readl(priv->tmon_base + trip->reg_offs);

 val &= trip->reg_msk;
 val >>= trip->reg_shift;

 return avs_tmon_code_to_temp(priv->thermal, val);
}
