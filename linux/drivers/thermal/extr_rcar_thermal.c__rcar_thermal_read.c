
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_thermal_priv {scalar_t__ base; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 _rcar_thermal_read(struct rcar_thermal_priv *priv, u32 reg)
{
 return ioread32(priv->base + reg);
}
