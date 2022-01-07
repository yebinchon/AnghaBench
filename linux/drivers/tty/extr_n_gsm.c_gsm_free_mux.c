
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {struct gsm_mux* buf; struct gsm_mux* txframe; } ;


 int kfree (struct gsm_mux*) ;

__attribute__((used)) static void gsm_free_mux(struct gsm_mux *gsm)
{
 kfree(gsm->txframe);
 kfree(gsm->buf);
 kfree(gsm);
}
