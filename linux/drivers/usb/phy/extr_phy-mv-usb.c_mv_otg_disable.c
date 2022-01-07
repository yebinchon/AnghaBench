
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_otg {scalar_t__ clock_gating; } ;


 int mv_otg_disable_internal (struct mv_otg*) ;

__attribute__((used)) static void mv_otg_disable(struct mv_otg *mvotg)
{
 if (mvotg->clock_gating)
  mv_otg_disable_internal(mvotg);
}
