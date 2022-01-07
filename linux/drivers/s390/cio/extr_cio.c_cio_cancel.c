
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schid; int dev; } ;
typedef int ccode ;


 int CIO_HEX_EVENT (int,int*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int cio_update_schib (struct subchannel*) ;
 char* dev_name (int *) ;
 int xsch (int ) ;

int
cio_cancel (struct subchannel *sch)
{
 int ccode;

 if (!sch)
  return -ENODEV;

 CIO_TRACE_EVENT(2, "cancelIO");
 CIO_TRACE_EVENT(2, dev_name(&sch->dev));

 ccode = xsch (sch->schid);

 CIO_HEX_EVENT(2, &ccode, sizeof(ccode));

 switch (ccode) {
 case 0:

  if (cio_update_schib(sch))
   return -ENODEV;
  return 0;
 case 1:
  return -EBUSY;
 case 2:
  return -EINVAL;
 default:
  return -ENODEV;
 }
}
