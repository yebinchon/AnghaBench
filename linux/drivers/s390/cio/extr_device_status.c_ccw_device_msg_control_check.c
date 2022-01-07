
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sch_no; int ssid; } ;
struct subchannel {TYPE_4__ schid; } ;
struct irb {int scsw; } ;
struct TYPE_5__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int devno; } ;
struct TYPE_7__ {TYPE_2__ dev_id; } ;


 int CIO_HEX_EVENT (int ,struct irb*,int) ;
 int CIO_MSG_EVENT (int ,char*,int ,int ,int,int ,int) ;
 int CIO_TRACE_EVENT (int ,char*) ;
 int SCHN_STAT_CHN_CTRL_CHK ;
 int SCHN_STAT_CHN_DATA_CHK ;
 int SCHN_STAT_INTF_CTRL_CHK ;
 int scsw_cstat (int *) ;
 int scsw_dstat (int *) ;
 int scsw_is_valid_cstat (int *) ;
 int sprintf (char*,char*,int) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void
ccw_device_msg_control_check(struct ccw_device *cdev, struct irb *irb)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 char dbf_text[15];

 if (!scsw_is_valid_cstat(&irb->scsw) ||
     !(scsw_cstat(&irb->scsw) & (SCHN_STAT_CHN_DATA_CHK |
       SCHN_STAT_CHN_CTRL_CHK | SCHN_STAT_INTF_CTRL_CHK)))
  return;
 CIO_MSG_EVENT(0, "Channel-Check or Interface-Control-Check "
        "received"
        " ... device %04x on subchannel 0.%x.%04x, dev_stat "
        ": %02X sch_stat : %02X\n",
        cdev->private->dev_id.devno, sch->schid.ssid,
        sch->schid.sch_no,
        scsw_dstat(&irb->scsw), scsw_cstat(&irb->scsw));
 sprintf(dbf_text, "chk%x", sch->schid.sch_no);
 CIO_TRACE_EVENT(0, dbf_text);
 CIO_HEX_EVENT(0, irb, sizeof(struct irb));
}
