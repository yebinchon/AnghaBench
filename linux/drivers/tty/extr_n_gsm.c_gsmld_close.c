
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_mux* disc_data; } ;
struct gsm_mux {int dummy; } ;


 int gsmld_detach_gsm (struct tty_struct*,struct gsm_mux*) ;
 int gsmld_flush_buffer (struct tty_struct*) ;
 int mux_put (struct gsm_mux*) ;

__attribute__((used)) static void gsmld_close(struct tty_struct *tty)
{
 struct gsm_mux *gsm = tty->disc_data;

 gsmld_detach_gsm(tty, gsm);

 gsmld_flush_buffer(tty);

 mux_put(gsm);
}
