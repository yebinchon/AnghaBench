
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tty_port {int dummy; } ;
struct gsm_mux {TYPE_1__** dlci; } ;
struct TYPE_2__ {struct tty_port port; } ;


 int CMD_RLS ;
 unsigned int NUM_DLCI ;
 int TTY_FRAME ;
 int TTY_OVERRUN ;
 int TTY_PARITY ;
 int gsm_control_reply (struct gsm_mux*,int ,int const*,int) ;
 scalar_t__ gsm_read_ea (unsigned int*,int ) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;

__attribute__((used)) static void gsm_control_rls(struct gsm_mux *gsm, const u8 *data, int clen)
{
 struct tty_port *port;
 unsigned int addr = 0;
 u8 bits;
 int len = clen;
 const u8 *dp = data;

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

 bits = *dp;
 if ((bits & 1) == 0)
  return;

 port = &gsm->dlci[addr]->port;

 if (bits & 2)
  tty_insert_flip_char(port, 0, TTY_OVERRUN);
 if (bits & 4)
  tty_insert_flip_char(port, 0, TTY_PARITY);
 if (bits & 8)
  tty_insert_flip_char(port, 0, TTY_FRAME);

 tty_flip_buffer_push(port);

 gsm_control_reply(gsm, CMD_RLS, data, clen);
}
