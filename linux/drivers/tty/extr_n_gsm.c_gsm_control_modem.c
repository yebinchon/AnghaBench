
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {int dummy; } ;
struct gsm_mux {struct gsm_dlci** dlci; } ;
struct gsm_dlci {int port; } ;


 int CMD_MSC ;
 unsigned int NUM_DLCI ;
 int gsm_control_reply (struct gsm_mux*,int ,int const*,int) ;
 int gsm_process_modem (struct tty_struct*,struct gsm_dlci*,unsigned int,int) ;
 scalar_t__ gsm_read_ea (unsigned int*,int ) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void gsm_control_modem(struct gsm_mux *gsm, const u8 *data, int clen)
{
 unsigned int addr = 0;
 unsigned int modem = 0;
 unsigned int brk = 0;
 struct gsm_dlci *dlci;
 int len = clen;
 const u8 *dp = data;
 struct tty_struct *tty;

 while (gsm_read_ea(&addr, *dp++) == 0) {
  len--;
  if (len == 0)
   return;
 }

 len--;
 if (len <= 0)
  return;

 addr >>= 1;

 if (addr == 0 || addr >= NUM_DLCI || gsm->dlci[addr] == ((void*)0))
  return;
 dlci = gsm->dlci[addr];

 while (gsm_read_ea(&modem, *dp++) == 0) {
  len--;
  if (len == 0)
   return;
 }
 len--;
 if (len > 0) {
  while (gsm_read_ea(&brk, *dp++) == 0) {
   len--;
   if (len == 0)
    return;
  }
  modem <<= 7;
  modem |= (brk & 0x7f);
 }
 tty = tty_port_tty_get(&dlci->port);
 gsm_process_modem(tty, dlci, modem, clen);
 if (tty) {
  tty_wakeup(tty);
  tty_kref_put(tty);
 }
 gsm_control_reply(gsm, CMD_MSC, data, clen);
}
