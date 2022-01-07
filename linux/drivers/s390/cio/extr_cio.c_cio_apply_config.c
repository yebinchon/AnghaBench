
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mba; scalar_t__ mbfc; int csense; int mp; int mme; int ena; int isc; int mbi; int intparm; } ;
struct subchannel {TYPE_2__ config; } ;
struct TYPE_3__ {scalar_t__ mbfc; int csense; int mp; int mme; int ena; int isc; int mbi; int intparm; } ;
struct schib {int mba; TYPE_1__ pmcw; } ;



__attribute__((used)) static void cio_apply_config(struct subchannel *sch, struct schib *schib)
{
 schib->pmcw.intparm = sch->config.intparm;
 schib->pmcw.mbi = sch->config.mbi;
 schib->pmcw.isc = sch->config.isc;
 schib->pmcw.ena = sch->config.ena;
 schib->pmcw.mme = sch->config.mme;
 schib->pmcw.mp = sch->config.mp;
 schib->pmcw.csense = sch->config.csense;
 schib->pmcw.mbfc = sch->config.mbfc;
 if (sch->config.mbfc)
  schib->mba = sch->config.mba;
}
