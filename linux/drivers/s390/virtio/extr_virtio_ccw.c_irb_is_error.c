
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irb {int scsw; } ;


 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 scalar_t__ scsw_cc (int *) ;
 scalar_t__ scsw_cstat (int *) ;
 int scsw_dstat (int *) ;

__attribute__((used)) static int irb_is_error(struct irb *irb)
{
 if (scsw_cstat(&irb->scsw) != 0)
  return 1;
 if (scsw_dstat(&irb->scsw) & ~(DEV_STAT_CHN_END | DEV_STAT_DEV_END))
  return 1;
 if (scsw_cc(&irb->scsw) != 0)
  return 1;
 return 0;
}
