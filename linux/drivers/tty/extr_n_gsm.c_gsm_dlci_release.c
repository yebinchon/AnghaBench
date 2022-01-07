
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct gsm_dlci {int state; int port; int mutex; } ;


 int DLCI_CLOSED ;
 int dlci_put (struct gsm_dlci*) ;
 int gsm_destroy_network (struct gsm_dlci*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_port_tty_set (int *,int *) ;

__attribute__((used)) static void gsm_dlci_release(struct gsm_dlci *dlci)
{
 struct tty_struct *tty = tty_port_tty_get(&dlci->port);
 if (tty) {
  mutex_lock(&dlci->mutex);
  gsm_destroy_network(dlci);
  mutex_unlock(&dlci->mutex);

  tty_hangup(tty);

  tty_port_tty_set(&dlci->port, ((void*)0));
  tty_kref_put(tty);
 }
 dlci->state = DLCI_CLOSED;
 dlci_put(dlci);
}
