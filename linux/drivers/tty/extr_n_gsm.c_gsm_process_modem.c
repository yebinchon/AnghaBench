
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tty_struct {int dummy; } ;
struct gsm_dlci {int constipated; int modem_rx; int port; } ;


 int C_CLOCAL (struct tty_struct*) ;
 int MDM_DV ;
 int MDM_FC ;
 int MDM_IC ;
 int MDM_RTC ;
 int MDM_RTR ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 int TTY_BREAK ;
 int gsm_dlci_data_kick (struct gsm_dlci*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_insert_flip_char (int *,int ,int ) ;

__attribute__((used)) static void gsm_process_modem(struct tty_struct *tty, struct gsm_dlci *dlci,
       u32 modem, int clen)
{
 int mlines = 0;
 u8 brk = 0;
 int fc;






 if (clen == 2)
  modem = modem & 0x7f;
 else {
  brk = modem & 0x7f;
  modem = (modem >> 7) & 0x7f;
 }


 fc = (modem & MDM_FC) || !(modem & MDM_RTR);
 if (fc && !dlci->constipated) {

  dlci->constipated = 1;
 } else if (!fc && dlci->constipated) {
  dlci->constipated = 0;
  gsm_dlci_data_kick(dlci);
 }


 if (modem & MDM_RTC)
  mlines |= TIOCM_DSR | TIOCM_DTR;
 if (modem & MDM_RTR)
  mlines |= TIOCM_RTS | TIOCM_CTS;
 if (modem & MDM_IC)
  mlines |= TIOCM_RI;
 if (modem & MDM_DV)
  mlines |= TIOCM_CD;


 if (tty) {
  if ((mlines & TIOCM_CD) == 0 && (dlci->modem_rx & TIOCM_CD))
   if (!C_CLOCAL(tty))
    tty_hangup(tty);
 }
 if (brk & 0x01)
  tty_insert_flip_char(&dlci->port, 0, TTY_BREAK);
 dlci->modem_rx = mlines;
}
