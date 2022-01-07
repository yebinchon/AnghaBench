
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct gsm_mux {int tty; int output; } ;


 int NUM_DLCI ;
 int gsm_activate_mux (struct gsm_mux*) ;
 int gsm_tty_driver ;
 int gsmld_output ;
 unsigned int mux_num_to_base (struct gsm_mux*) ;
 int tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (int ) ;
 int tty_register_device (int ,unsigned int,int *) ;

__attribute__((used)) static int gsmld_attach_gsm(struct tty_struct *tty, struct gsm_mux *gsm)
{
 unsigned int base;
 int ret, i;

 gsm->tty = tty_kref_get(tty);
 gsm->output = gsmld_output;
 ret = gsm_activate_mux(gsm);
 if (ret != 0)
  tty_kref_put(gsm->tty);
 else {


  base = mux_num_to_base(gsm);
  for (i = 1; i < NUM_DLCI; i++)
   tty_register_device(gsm_tty_driver, base + i, ((void*)0));
 }
 return ret;
}
