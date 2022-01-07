
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dummy; } ;


 scalar_t__ PG_STATE_OFF ;
 scalar_t__ tegra_bpmp_powergate_get_state (struct tegra_bpmp*,unsigned int) ;

__attribute__((used)) static inline bool tegra_bpmp_powergate_is_powered(struct tegra_bpmp *bpmp,
         unsigned int id)
{
 return tegra_bpmp_powergate_get_state(bpmp, id) != PG_STATE_OFF;
}
