
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {unsigned int index; struct gsm_dlci* driver_data; } ;
struct tty_driver {int dummy; } ;
struct gsm_mux {int mutex; struct gsm_dlci** dlci; scalar_t__ dead; } ;
struct gsm_dlci {scalar_t__ state; int port; } ;


 scalar_t__ DLCI_OPEN ;
 int ECHRNG ;
 int EL2HLT ;
 int EL2NSYNC ;
 int ENOMEM ;
 int ENXIO ;
 int EUNATCH ;
 unsigned int MAX_MUX ;
 int dlci_get (struct gsm_dlci*) ;
 int dlci_put (struct gsm_dlci*) ;
 struct gsm_dlci* gsm_dlci_alloc (struct gsm_mux*,unsigned int) ;
 struct gsm_mux** gsm_mux ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mux_get (struct gsm_mux*) ;
 unsigned int mux_line_to_num (unsigned int) ;
 int tty_port_install (int *,struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int gsmtty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct gsm_mux *gsm;
 struct gsm_dlci *dlci;
 unsigned int line = tty->index;
 unsigned int mux = mux_line_to_num(line);
 bool alloc = 0;
 int ret;

 line = line & 0x3F;

 if (mux >= MAX_MUX)
  return -ENXIO;

 if (gsm_mux[mux] == ((void*)0))
  return -EUNATCH;
 if (line == 0 || line > 61)
  return -ECHRNG;
 gsm = gsm_mux[mux];
 if (gsm->dead)
  return -EL2HLT;




 mutex_lock(&gsm->mutex);
 if (gsm->dlci[0] && gsm->dlci[0]->state != DLCI_OPEN) {
  mutex_unlock(&gsm->mutex);
  return -EL2NSYNC;
 }
 dlci = gsm->dlci[line];
 if (dlci == ((void*)0)) {
  alloc = 1;
  dlci = gsm_dlci_alloc(gsm, line);
 }
 if (dlci == ((void*)0)) {
  mutex_unlock(&gsm->mutex);
  return -ENOMEM;
 }
 ret = tty_port_install(&dlci->port, driver, tty);
 if (ret) {
  if (alloc)
   dlci_put(dlci);
  mutex_unlock(&gsm->mutex);
  return ret;
 }

 dlci_get(dlci);
 dlci_get(gsm->dlci[0]);
 mux_get(gsm);
 tty->driver_data = dlci;
 mutex_unlock(&gsm->mutex);

 return 0;
}
