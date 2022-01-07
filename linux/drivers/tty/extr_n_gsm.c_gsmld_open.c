
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; struct gsm_mux* disc_data; TYPE_1__* ops; } ;
struct gsm_mux {int encoding; } ;
struct TYPE_2__ {int * write; } ;


 int EINVAL ;
 int ENOMEM ;
 struct gsm_mux* gsm_alloc_mux () ;
 int gsm_cleanup_mux (struct gsm_mux*) ;
 int gsmld_attach_gsm (struct tty_struct*,struct gsm_mux*) ;
 int mux_put (struct gsm_mux*) ;

__attribute__((used)) static int gsmld_open(struct tty_struct *tty)
{
 struct gsm_mux *gsm;
 int ret;

 if (tty->ops->write == ((void*)0))
  return -EINVAL;


 gsm = gsm_alloc_mux();
 if (gsm == ((void*)0))
  return -ENOMEM;

 tty->disc_data = gsm;
 tty->receive_room = 65536;


 gsm->encoding = 1;

 ret = gsmld_attach_gsm(tty, gsm);
 if (ret != 0) {
  gsm_cleanup_mux(gsm);
  mux_put(gsm);
 }
 return ret;
}
