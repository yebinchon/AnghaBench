
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int io_error; int state; } ;


 int GSM_SEARCH ;

__attribute__((used)) static void gsm_error(struct gsm_mux *gsm,
    unsigned char data, unsigned char flag)
{
 gsm->state = GSM_SEARCH;
 gsm->io_error++;
}
