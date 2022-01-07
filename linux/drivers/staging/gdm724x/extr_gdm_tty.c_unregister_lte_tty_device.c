
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_dev {struct gdm** gdm; } ;
struct gdm {size_t index; size_t minor; int port; } ;


 int TTY_MAX_COUNT ;
 int * gdm_driver ;
 int *** gdm_table ;
 int gdm_table_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_put (int *) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_unregister_device (int ,size_t) ;
 int tty_vhangup (struct tty_struct*) ;

void unregister_lte_tty_device(struct tty_dev *tty_dev)
{
 struct gdm *gdm;
 struct tty_struct *tty;
 int i;

 for (i = 0; i < TTY_MAX_COUNT; i++) {
  gdm = tty_dev->gdm[i];
  if (!gdm)
   continue;

  mutex_lock(&gdm_table_lock);
  gdm_table[gdm->index][gdm->minor] = ((void*)0);
  mutex_unlock(&gdm_table_lock);

  tty = tty_port_tty_get(&gdm->port);
  if (tty) {
   tty_vhangup(tty);
   tty_kref_put(tty);
  }

  tty_unregister_device(gdm_driver[i], gdm->minor);
  tty_port_put(&gdm->port);
 }
}
