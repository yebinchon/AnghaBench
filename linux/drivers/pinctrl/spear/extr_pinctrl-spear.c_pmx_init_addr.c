
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spear_pingroup {int nmodemuxs; struct spear_modemux* modemuxs; } ;
struct spear_pinctrl_machdata {int ngroups; struct spear_pingroup** groups; } ;
struct spear_modemux {int nmuxregs; TYPE_1__* muxregs; } ;
struct TYPE_2__ {int reg; } ;



void pmx_init_addr(struct spear_pinctrl_machdata *machdata, u16 reg)
{
 struct spear_pingroup *pgroup;
 struct spear_modemux *modemux;
 int i, j, group;

 for (group = 0; group < machdata->ngroups; group++) {
  pgroup = machdata->groups[group];

  for (i = 0; i < pgroup->nmodemuxs; i++) {
   modemux = &pgroup->modemuxs[i];

   for (j = 0; j < modemux->nmuxregs; j++)
    if (modemux->muxregs[j].reg == 0xFFFF)
     modemux->muxregs[j].reg = reg;
  }
 }
}
