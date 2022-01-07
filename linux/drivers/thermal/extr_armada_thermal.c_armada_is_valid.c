
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct armada_thermal_priv {TYPE_1__* data; int syscon; } ;
struct TYPE_2__ {int is_valid_bit; int syscon_status_off; } ;


 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool armada_is_valid(struct armada_thermal_priv *priv)
{
 u32 reg;

 if (!priv->data->is_valid_bit)
  return 1;

 regmap_read(priv->syscon, priv->data->syscon_status_off, &reg);

 return reg & priv->data->is_valid_bit;
}
