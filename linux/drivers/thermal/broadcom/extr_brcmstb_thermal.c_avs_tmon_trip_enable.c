
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmstb_thermal_priv {scalar_t__ tmon_base; int dev; } ;
struct avs_tmon_trip {scalar_t__ enable_offs; int enable_mask; } ;
typedef enum avs_tmon_trip_type { ____Placeholder_avs_tmon_trip_type } avs_tmon_trip_type ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 struct avs_tmon_trip* avs_tmon_trips ;
 int dev_dbg (int ,char*,char*,int) ;

__attribute__((used)) static void avs_tmon_trip_enable(struct brcmstb_thermal_priv *priv,
     enum avs_tmon_trip_type type, int en)
{
 struct avs_tmon_trip *trip = &avs_tmon_trips[type];
 u32 val = __raw_readl(priv->tmon_base + trip->enable_offs);

 dev_dbg(priv->dev, "%sable trip, type %d\n", en ? "en" : "dis", type);

 if (en)
  val |= trip->enable_mask;
 else
  val &= ~trip->enable_mask;

 __raw_writel(val, priv->tmon_base + trip->enable_offs);
}
