
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct exynos_mipi_video_phy {int slock; TYPE_2__* phys; struct regmap** regmaps; } ;
struct exynos_mipi_phy_desc {size_t enable_map; size_t resetn_map; size_t coupled_phy_id; int enable_val; int enable_reg; int resetn_val; int resetn_reg; } ;
struct TYPE_4__ {TYPE_1__* phy; } ;
struct TYPE_3__ {scalar_t__ power_count; } ;


 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __set_phy_state(const struct exynos_mipi_phy_desc *data,
      struct exynos_mipi_video_phy *state, unsigned int on)
{
 struct regmap *enable_map = state->regmaps[data->enable_map];
 struct regmap *resetn_map = state->regmaps[data->resetn_map];

 spin_lock(&state->slock);


 if (!on && data->coupled_phy_id >= 0 &&
     state->phys[data->coupled_phy_id].phy->power_count == 0)
  regmap_update_bits(enable_map, data->enable_reg,
       data->enable_val, 0);

 if (on)
  regmap_update_bits(resetn_map, data->resetn_reg,
       data->resetn_val, data->resetn_val);
 else
  regmap_update_bits(resetn_map, data->resetn_reg,
       data->resetn_val, 0);

 if (on)
  regmap_update_bits(enable_map, data->enable_reg,
       data->enable_val, data->enable_val);

 spin_unlock(&state->slock);

 return 0;
}
