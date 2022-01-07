
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_otg {scalar_t__ clock_gating; } ;


 int mv_otg_enable_internal (struct mv_otg*) ;

__attribute__((used)) static int mv_otg_enable(struct mv_otg *mvotg)
{
 if (mvotg->clock_gating)
  return mv_otg_enable_internal(mvotg);

 return 0;
}
