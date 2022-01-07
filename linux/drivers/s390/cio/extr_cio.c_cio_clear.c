
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int actl; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ scsw; } ;
struct subchannel {TYPE_3__ schib; int schid; int dev; } ;
typedef int ccode ;


 int CIO_HEX_EVENT (int,int*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int ENODEV ;
 int SCSW_ACTL_CLEAR_PEND ;
 int csch (int ) ;
 char* dev_name (int *) ;

int
cio_clear(struct subchannel *sch)
{
 int ccode;

 if (!sch)
  return -ENODEV;

 CIO_TRACE_EVENT(2, "clearIO");
 CIO_TRACE_EVENT(2, dev_name(&sch->dev));




 ccode = csch (sch->schid);

 CIO_HEX_EVENT(2, &ccode, sizeof(ccode));

 switch (ccode) {
 case 0:
  sch->schib.scsw.cmd.actl |= SCSW_ACTL_CLEAR_PEND;
  return 0;
 default:
  return -ENODEV;
 }
}
