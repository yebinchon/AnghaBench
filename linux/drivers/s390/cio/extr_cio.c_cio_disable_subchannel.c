
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ena; } ;
struct subchannel {TYPE_1__ config; int dev; } ;
typedef int ret ;


 int CIO_HEX_EVENT (int,int*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int ENODEV ;
 int cio_commit_config (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 char* dev_name (int *) ;
 scalar_t__ sch_is_pseudo_sch (struct subchannel*) ;

int cio_disable_subchannel(struct subchannel *sch)
{
 int ret;

 CIO_TRACE_EVENT(2, "dissch");
 CIO_TRACE_EVENT(2, dev_name(&sch->dev));

 if (sch_is_pseudo_sch(sch))
  return 0;
 if (cio_update_schib(sch))
  return -ENODEV;

 sch->config.ena = 0;
 ret = cio_commit_config(sch);

 CIO_HEX_EVENT(2, &ret, sizeof(ret));
 return ret;
}
