
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int event; int t2_timer; struct gsm_dlci** dlci; } ;
struct gsm_dlci {scalar_t__ state; } ;
struct gsm_control {int dummy; } ;


 int CMD_CLD ;
 scalar_t__ DLCI_CLOSED ;
 int EINTR ;
 int current ;
 int del_timer_sync (int *) ;
 struct gsm_control* gsm_control_send (struct gsm_mux*,int ,int *,int ) ;
 int gsm_control_wait (struct gsm_mux*,struct gsm_control*) ;
 int gsm_dlci_begin_close (struct gsm_dlci*) ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int gsm_disconnect(struct gsm_mux *gsm)
{
 struct gsm_dlci *dlci = gsm->dlci[0];
 struct gsm_control *gc;

 if (!dlci)
  return 0;



 gc = gsm_control_send(gsm, CMD_CLD, ((void*)0), 0);
 if (gc)
  gsm_control_wait(gsm, gc);

 del_timer_sync(&gsm->t2_timer);


 gsm_dlci_begin_close(dlci);
 wait_event_interruptible(gsm->event,
    dlci->state == DLCI_CLOSED);

 if (signal_pending(current))
  return -EINTR;

 return 0;
}
