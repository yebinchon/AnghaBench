
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct gsm_mux {struct tty_struct* tty; } ;


 int NUM_DLCI ;
 int WARN_ON (int) ;
 int gsm_cleanup_mux (struct gsm_mux*) ;
 int gsm_tty_driver ;
 unsigned int mux_num_to_base (struct gsm_mux*) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_unregister_device (int ,unsigned int) ;

__attribute__((used)) static void gsmld_detach_gsm(struct tty_struct *tty, struct gsm_mux *gsm)
{
 unsigned int base = mux_num_to_base(gsm);
 int i;

 WARN_ON(tty != gsm->tty);
 for (i = 1; i < NUM_DLCI; i++)
  tty_unregister_device(gsm_tty_driver, base + i);
 gsm_cleanup_mux(gsm);
 tty_kref_put(gsm->tty);
 gsm->tty = ((void*)0);
}
