
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {int lpm; int schib; int dev; TYPE_1__ schid; } ;
struct schib {int dummy; } ;
typedef int __u8 ;


 int CIO_HEX_EVENT (int ,int *,int) ;
 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 int CIO_TRACE_EVENT (int ,char*) ;
 int EACCES ;
 int ENODEV ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 char* dev_name (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
cio_start_handle_notoper(struct subchannel *sch, __u8 lpm)
{
 char dbf_text[15];

 if (lpm != 0)
  sch->lpm &= ~lpm;
 else
  sch->lpm = 0;

 CIO_MSG_EVENT(2, "cio_start: 'not oper' status for "
        "subchannel 0.%x.%04x!\n", sch->schid.ssid,
        sch->schid.sch_no);

 if (cio_update_schib(sch))
  return -ENODEV;

 sprintf(dbf_text, "no%s", dev_name(&sch->dev));
 CIO_TRACE_EVENT(0, dbf_text);
 CIO_HEX_EVENT(0, &sch->schib, sizeof (struct schib));

 return (sch->lpm ? -EACCES : -ENODEV);
}
