
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__* powergates; } ;



__attribute__((used)) static inline bool tegra_powergate_is_valid(struct tegra_pmc *pmc, int id)
{
 return (pmc->soc && pmc->soc->powergates[id]);
}
