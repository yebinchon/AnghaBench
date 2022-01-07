
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ws_row; int ws_col; } ;
struct tty_struct {int count; TYPE_1__ winsize; } ;
struct file {int dummy; } ;
struct TYPE_5__ {scalar_t__ low_latency; } ;


 TYPE_2__ sclp_vt220_port ;
 int tty_port_tty_set (TYPE_2__*,struct tty_struct*) ;

__attribute__((used)) static int
sclp_vt220_open(struct tty_struct *tty, struct file *filp)
{
 if (tty->count == 1) {
  tty_port_tty_set(&sclp_vt220_port, tty);
  sclp_vt220_port.low_latency = 0;
  if (!tty->winsize.ws_row && !tty->winsize.ws_col) {
   tty->winsize.ws_row = 24;
   tty->winsize.ws_col = 80;
  }
 }
 return 0;
}
