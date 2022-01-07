
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {scalar_t__ encoding; int num; scalar_t__ dead; int error; int receive; int tx_lock; int control_lock; int event; int t2_timer; } ;
struct gsm_dlci {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int MAX_MUX ;
 int gsm0_receive ;
 int gsm1_receive ;
 int gsm_control_retransmit ;
 struct gsm_dlci* gsm_dlci_alloc (struct gsm_mux*,int ) ;
 int gsm_error ;
 struct gsm_mux** gsm_mux ;
 int gsm_mux_lock ;
 int init_waitqueue_head (int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int gsm_activate_mux(struct gsm_mux *gsm)
{
 struct gsm_dlci *dlci;
 int i = 0;

 timer_setup(&gsm->t2_timer, gsm_control_retransmit, 0);
 init_waitqueue_head(&gsm->event);
 spin_lock_init(&gsm->control_lock);
 spin_lock_init(&gsm->tx_lock);

 if (gsm->encoding == 0)
  gsm->receive = gsm0_receive;
 else
  gsm->receive = gsm1_receive;
 gsm->error = gsm_error;

 spin_lock(&gsm_mux_lock);
 for (i = 0; i < MAX_MUX; i++) {
  if (gsm_mux[i] == ((void*)0)) {
   gsm->num = i;
   gsm_mux[i] = gsm;
   break;
  }
 }
 spin_unlock(&gsm_mux_lock);
 if (i == MAX_MUX)
  return -EBUSY;

 dlci = gsm_dlci_alloc(gsm, 0);
 if (dlci == ((void*)0))
  return -ENOMEM;
 gsm->dead = 0;
 return 0;
}
