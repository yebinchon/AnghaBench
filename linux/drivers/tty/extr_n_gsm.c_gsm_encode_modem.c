
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_dlci {int modem_tx; scalar_t__ throttled; } ;


 int MDM_DV ;
 int MDM_FC ;
 int MDM_IC ;
 int MDM_RTC ;
 int MDM_RTR ;
 int TIOCM_CD ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;

__attribute__((used)) static u8 gsm_encode_modem(const struct gsm_dlci *dlci)
{
 u8 modembits = 0;

 if (dlci->throttled)
  modembits |= MDM_FC;
 if (dlci->modem_tx & TIOCM_DTR)
  modembits |= MDM_RTC;
 if (dlci->modem_tx & TIOCM_RTS)
  modembits |= MDM_RTR;
 if (dlci->modem_tx & TIOCM_RI)
  modembits |= MDM_IC;
 if (dlci->modem_tx & TIOCM_CD)
  modembits |= MDM_DV;
 return modembits;
}
