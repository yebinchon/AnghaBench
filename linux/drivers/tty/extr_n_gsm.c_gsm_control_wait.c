
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int event; } ;
struct gsm_control {int done; int error; } ;


 int kfree (struct gsm_control*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int gsm_control_wait(struct gsm_mux *gsm, struct gsm_control *control)
{
 int err;
 wait_event(gsm->event, control->done == 1);
 err = control->error;
 kfree(control);
 return err;
}
