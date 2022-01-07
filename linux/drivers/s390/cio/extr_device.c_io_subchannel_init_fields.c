
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pam; int pom; int pim; int dev; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct TYPE_6__ {int sch_no; int ssid; } ;
struct subchannel {int opm; int lpm; TYPE_2__ schib; TYPE_3__ schid; int isc; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int ,int ,int,int ) ;
 int CONSOLE_ISC ;
 int IO_SCH_ISC ;
 int chp_get_sch_opm (struct subchannel*) ;
 scalar_t__ cio_is_console (TYPE_3__) ;
 int io_subchannel_init_config (struct subchannel*) ;

__attribute__((used)) static void io_subchannel_init_fields(struct subchannel *sch)
{
 if (cio_is_console(sch->schid))
  sch->opm = 0xff;
 else
  sch->opm = chp_get_sch_opm(sch);
 sch->lpm = sch->schib.pmcw.pam & sch->opm;
 sch->isc = cio_is_console(sch->schid) ? CONSOLE_ISC : IO_SCH_ISC;

 CIO_MSG_EVENT(6, "Detected device %04x on subchannel 0.%x.%04X"
        " - PIM = %02X, PAM = %02X, POM = %02X\n",
        sch->schib.pmcw.dev, sch->schid.ssid,
        sch->schid.sch_no, sch->schib.pmcw.pim,
        sch->schib.pmcw.pam, sch->schib.pmcw.pom);

 io_subchannel_init_config(sch);
}
