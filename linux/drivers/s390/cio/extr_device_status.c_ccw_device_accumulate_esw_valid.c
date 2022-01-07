
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stctl; int actl; int eswf; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;


 int SCSW_ACTL_SUSPENDED ;
 int SCSW_STCTL_INTER_STATUS ;
 int SCSW_STCTL_STATUS_PEND ;

__attribute__((used)) static int
ccw_device_accumulate_esw_valid(struct irb *irb)
{
 if (!irb->scsw.cmd.eswf &&
     (irb->scsw.cmd.stctl == SCSW_STCTL_STATUS_PEND))
  return 0;
 if (irb->scsw.cmd.stctl ==
   (SCSW_STCTL_INTER_STATUS|SCSW_STCTL_STATUS_PEND) &&
     !(irb->scsw.cmd.actl & SCSW_ACTL_SUSPENDED))
  return 0;
 return 1;
}
