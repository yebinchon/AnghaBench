
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct gsm_dlci {int adaption; struct tty_port port; } ;


 int debug ;
 int gsm_process_modem (struct tty_struct*,struct gsm_dlci*,unsigned int,int) ;
 int gsm_read_ea (unsigned int*,int ) ;
 int pr_debug (char*,int) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,int const*,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;

__attribute__((used)) static void gsm_dlci_data(struct gsm_dlci *dlci, const u8 *data, int clen)
{

 struct tty_port *port = &dlci->port;
 struct tty_struct *tty;
 unsigned int modem = 0;
 int len = clen;

 if (debug & 16)
  pr_debug("%d bytes for tty\n", len);
 switch (dlci->adaption) {

 case 4:
  break;
 case 3:
  break;
 case 2:
  while (gsm_read_ea(&modem, *data++) == 0) {
   len--;
   if (len == 0)
    return;
  }
  tty = tty_port_tty_get(port);
  if (tty) {
   gsm_process_modem(tty, dlci, modem, clen);
   tty_kref_put(tty);
  }

 case 1:
 default:
  tty_insert_flip_string(port, data, len);
  tty_flip_buffer_push(port);
 }
}
