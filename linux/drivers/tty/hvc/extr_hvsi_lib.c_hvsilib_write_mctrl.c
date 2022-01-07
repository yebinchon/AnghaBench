
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvsi_priv {unsigned short mctrl; int termno; } ;
struct TYPE_2__ {int len; int type; } ;
struct hvsi_control {TYPE_1__ hdr; void* word; void* mask; int verb; } ;


 int HVSI_TSDTR ;
 unsigned short TIOCM_DTR ;
 int VSV_SET_MODEM_CTL ;
 int VS_CONTROL_PACKET_HEADER ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int hvsi_send_packet (struct hvsi_priv*,TYPE_1__*) ;
 int pr_devel (char*,int ,char*) ;

int hvsilib_write_mctrl(struct hvsi_priv *pv, int dtr)
{
 struct hvsi_control ctrl;
 unsigned short mctrl;

 mctrl = pv->mctrl;
 if (dtr)
  mctrl |= TIOCM_DTR;
 else
  mctrl &= ~TIOCM_DTR;
 if (mctrl == pv->mctrl)
  return 0;
 pv->mctrl = mctrl;

 pr_devel("HVSI@%x: %s DTR...\n", pv->termno,
   dtr ? "Setting" : "Clearing");

 ctrl.hdr.type = VS_CONTROL_PACKET_HEADER,
 ctrl.hdr.len = sizeof(struct hvsi_control);
 ctrl.verb = cpu_to_be16(VSV_SET_MODEM_CTL);
 ctrl.mask = cpu_to_be32(HVSI_TSDTR);
 ctrl.word = cpu_to_be32(dtr ? HVSI_TSDTR : 0);
 return hvsi_send_packet(pv, &ctrl.hdr);
}
