
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ lpm; } ;
struct ci_hdrc {TYPE_2__ hw_bank; TYPE_1__* platdata; } ;
struct TYPE_3__ {int phy_mode; } ;


 int DEVLC_PTS (int) ;
 int DEVLC_PTW ;
 int DEVLC_STS ;
 int OP_DEVLC ;
 int OP_PORTSC ;
 int PORTSC_PTS (int) ;
 int PORTSC_PTW ;
 int PORTSC_STS ;
 int PTS_HSIC ;
 int PTS_SERIAL ;
 int PTS_ULPI ;
 int PTS_UTMI ;





 int hw_write (struct ci_hdrc*,int ,int,int) ;

void hw_phymode_configure(struct ci_hdrc *ci)
{
 u32 portsc, lpm, sts = 0;

 switch (ci->platdata->phy_mode) {
 case 129:
  portsc = PORTSC_PTS(PTS_UTMI);
  lpm = DEVLC_PTS(PTS_UTMI);
  break;
 case 128:
  portsc = PORTSC_PTS(PTS_UTMI) | PORTSC_PTW;
  lpm = DEVLC_PTS(PTS_UTMI) | DEVLC_PTW;
  break;
 case 130:
  portsc = PORTSC_PTS(PTS_ULPI);
  lpm = DEVLC_PTS(PTS_ULPI);
  break;
 case 131:
  portsc = PORTSC_PTS(PTS_SERIAL);
  lpm = DEVLC_PTS(PTS_SERIAL);
  sts = 1;
  break;
 case 132:
  portsc = PORTSC_PTS(PTS_HSIC);
  lpm = DEVLC_PTS(PTS_HSIC);
  break;
 default:
  return;
 }

 if (ci->hw_bank.lpm) {
  hw_write(ci, OP_DEVLC, DEVLC_PTS(7) | DEVLC_PTW, lpm);
  if (sts)
   hw_write(ci, OP_DEVLC, DEVLC_STS, DEVLC_STS);
 } else {
  hw_write(ci, OP_PORTSC, PORTSC_PTS(7) | PORTSC_PTW, portsc);
  if (sts)
   hw_write(ci, OP_PORTSC, PORTSC_STS, PORTSC_STS);
 }
}
