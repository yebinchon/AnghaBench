
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_udc {scalar_t__ clock_gating; } ;


 int mv_udc_disable_internal (struct mv_udc*) ;

__attribute__((used)) static void mv_udc_disable(struct mv_udc *udc)
{
 if (udc->clock_gating)
  mv_udc_disable_internal(udc);
}
