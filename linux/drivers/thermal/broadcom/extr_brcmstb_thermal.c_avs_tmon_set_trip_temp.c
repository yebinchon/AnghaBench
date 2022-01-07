
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_thermal_priv {scalar_t__ tmon_base; int thermal; int dev; } ;
struct avs_tmon_trip {scalar_t__ reg_offs; int reg_msk; int reg_shift; } ;
typedef enum avs_tmon_trip_type { ____Placeholder_avs_tmon_trip_type } avs_tmon_trip_type ;


 int TMON_TRIP_TYPE_LOW ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int avs_tmon_temp_to_code (int ,int,int) ;
 struct avs_tmon_trip* avs_tmon_trips ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
       enum avs_tmon_trip_type type,
       int temp)
{
 struct avs_tmon_trip *trip = &avs_tmon_trips[type];
 u32 val, orig;

 dev_dbg(priv->dev, "set temp %d to %d\n", type, temp);


 val = avs_tmon_temp_to_code(priv->thermal, temp,
        type == TMON_TRIP_TYPE_LOW);

 val <<= trip->reg_shift;
 val &= trip->reg_msk;

 orig = __raw_readl(priv->tmon_base + trip->reg_offs);
 orig &= ~trip->reg_msk;
 orig |= val;
 __raw_writel(orig, priv->tmon_base + trip->reg_offs);
}
