
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; } ;
struct tegra_io_pad_soc {int id; } ;
typedef enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;
struct TYPE_2__ {unsigned int num_io_pads; struct tegra_io_pad_soc const* io_pads; } ;



__attribute__((used)) static const struct tegra_io_pad_soc *
tegra_io_pad_find(struct tegra_pmc *pmc, enum tegra_io_pad id)
{
 unsigned int i;

 for (i = 0; i < pmc->soc->num_io_pads; i++)
  if (pmc->soc->io_pads[i].id == id)
   return &pmc->soc->io_pads[i];

 return ((void*)0);
}
