
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_udc {scalar_t__ clock_gating; } ;


 int mv_udc_enable_internal (struct mv_udc*) ;

__attribute__((used)) static int mv_udc_enable(struct mv_udc *udc)
{
 if (udc->clock_gating)
  return mv_udc_enable_internal(udc);

 return 0;
}
