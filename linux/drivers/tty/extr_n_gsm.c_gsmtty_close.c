
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int port; int mutex; } ;
struct file {int dummy; } ;


 scalar_t__ C_HUPCL (struct tty_struct*) ;
 scalar_t__ DLCI_CLOSED ;
 int gsm_destroy_network (struct gsm_dlci*) ;
 int gsm_dlci_begin_close (struct gsm_dlci*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_port_close_end (int *,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (int *,struct tty_struct*,struct file*) ;
 scalar_t__ tty_port_initialized (int *) ;
 int tty_port_lower_dtr_rts (int *) ;
 int tty_port_tty_set (int *,int *) ;

__attribute__((used)) static void gsmtty_close(struct tty_struct *tty, struct file *filp)
{
 struct gsm_dlci *dlci = tty->driver_data;

 if (dlci == ((void*)0))
  return;
 if (dlci->state == DLCI_CLOSED)
  return;
 mutex_lock(&dlci->mutex);
 gsm_destroy_network(dlci);
 mutex_unlock(&dlci->mutex);
 if (tty_port_close_start(&dlci->port, tty, filp) == 0)
  return;
 gsm_dlci_begin_close(dlci);
 if (tty_port_initialized(&dlci->port) && C_HUPCL(tty))
  tty_port_lower_dtr_rts(&dlci->port);
 tty_port_close_end(&dlci->port, tty);
 tty_port_tty_set(&dlci->port, ((void*)0));
 return;
}
