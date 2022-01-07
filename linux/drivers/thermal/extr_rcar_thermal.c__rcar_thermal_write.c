
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_thermal_priv {scalar_t__ base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void _rcar_thermal_write(struct rcar_thermal_priv *priv,
    u32 reg, u32 data)
{
 iowrite32(data, priv->base + reg);
}
