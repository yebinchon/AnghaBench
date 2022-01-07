
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int name; struct isi_port* driver_data; } ;
struct TYPE_2__ {int xmit_buf; } ;
struct isi_port {scalar_t__ xmit_cnt; int status; TYPE_1__ port; } ;


 int ISI_TXOK ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static void isicom_flush_chars(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;

 if (isicom_paranoia_check(port, tty->name, "isicom_flush_chars"))
  return;

 if (port->xmit_cnt <= 0 || tty->stopped || tty->hw_stopped ||
   !port->port.xmit_buf)
  return;



 port->status |= ISI_TXOK;
}
