
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ st; int w; int dnv; } ;
struct schib {TYPE_1__ pmcw; } ;


 scalar_t__ SUBCHANNEL_TYPE_IO ;
 scalar_t__ SUBCHANNEL_TYPE_MSG ;

int css_sch_is_valid(struct schib *schib)
{
 if ((schib->pmcw.st == SUBCHANNEL_TYPE_IO) && !schib->pmcw.dnv)
  return 0;
 if ((schib->pmcw.st == SUBCHANNEL_TYPE_MSG) && !schib->pmcw.w)
  return 0;
 return 1;
}
