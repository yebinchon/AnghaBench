
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int actl; } ;
struct TYPE_5__ {TYPE_1__ eadm; } ;
struct TYPE_6__ {TYPE_2__ scsw; } ;
struct subchannel {TYPE_3__ schib; int schid; } ;


 int ENODEV ;
 int SCSW_ACTL_CLEAR_PEND ;
 int csch (int ) ;

__attribute__((used)) static int eadm_subchannel_clear(struct subchannel *sch)
{
 int cc;

 cc = csch(sch->schid);
 if (cc)
  return -ENODEV;

 sch->schib.scsw.eadm.actl |= SCSW_ACTL_CLEAR_PEND;
 return 0;
}
