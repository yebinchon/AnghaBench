
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pmc {int powergates_available; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static inline bool tegra_powergate_is_available(struct tegra_pmc *pmc, int id)
{
 return test_bit(id, pmc->powergates_available);
}
