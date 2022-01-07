
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {struct capi_ctr* private; } ;
struct TYPE_4__ {scalar_t__ manu; } ;
struct capi_ctr {TYPE_1__ profile; scalar_t__ driverdata; } ;
struct TYPE_5__ {char** version; char* cardname; TYPE_3__* card; } ;
typedef TYPE_2__ avmctrl_info ;
struct TYPE_6__ {char* name; char* port; char* irq; char* membase; int cardtype; } ;
typedef TYPE_3__ avmcard ;


 size_t VER_CARDTYPE ;
 size_t VER_DRIVER ;
 size_t VER_SERIAL ;
 int seq_printf (struct seq_file*,char*,char*,char*,...) ;

__attribute__((used)) static int c4_proc_show(struct seq_file *m, void *v)
{
 struct capi_ctr *ctrl = m->private;
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 u8 flag;
 char *s;

 seq_printf(m, "%-16s %s\n", "name", card->name);
 seq_printf(m, "%-16s 0x%x\n", "io", card->port);
 seq_printf(m, "%-16s %d\n", "irq", card->irq);
 seq_printf(m, "%-16s 0x%lx\n", "membase", card->membase);
 switch (card->cardtype) {
 case 136: s = "B1 ISA"; break;
 case 135: s = "B1 PCI"; break;
 case 134: s = "B1 PCMCIA"; break;
 case 131: s = "M1"; break;
 case 130: s = "M2"; break;
 case 129: s = "T1 ISA (HEMA)"; break;
 case 128: s = "T1 PCI"; break;
 case 132: s = "C4"; break;
 case 133: s = "C2"; break;
 default: s = "???"; break;
 }
 seq_printf(m, "%-16s %s\n", "type", s);
 if ((s = cinfo->version[VER_DRIVER]) != ((void*)0))
  seq_printf(m, "%-16s %s\n", "ver_driver", s);
 if ((s = cinfo->version[VER_CARDTYPE]) != ((void*)0))
  seq_printf(m, "%-16s %s\n", "ver_cardtype", s);
 if ((s = cinfo->version[VER_SERIAL]) != ((void*)0))
  seq_printf(m, "%-16s %s\n", "ver_serial", s);

 if (card->cardtype != 131) {
  flag = ((u8 *)(ctrl->profile.manu))[3];
  if (flag)
   seq_printf(m, "%-16s%s%s%s%s%s%s%s\n",
       "protocol",
       (flag & 0x01) ? " DSS1" : "",
       (flag & 0x02) ? " CT1" : "",
       (flag & 0x04) ? " VN3" : "",
       (flag & 0x08) ? " NI1" : "",
       (flag & 0x10) ? " AUSTEL" : "",
       (flag & 0x20) ? " ESS" : "",
       (flag & 0x40) ? " 1TR6" : ""
    );
 }
 if (card->cardtype != 131) {
  flag = ((u8 *)(ctrl->profile.manu))[5];
  if (flag)
   seq_printf(m, "%-16s%s%s%s%s\n",
       "linetype",
       (flag & 0x01) ? " point to point" : "",
       (flag & 0x02) ? " point to multipoint" : "",
       (flag & 0x08) ? " leased line without D-channel" : "",
       (flag & 0x04) ? " leased line with D-channel" : ""
    );
 }
 seq_printf(m, "%-16s %s\n", "cardname", cinfo->cardname);

 return 0;
}
