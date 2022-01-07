
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int dummy; } ;


 int gsm_send (struct gsm_mux*,int,int ,int) ;

__attribute__((used)) static inline void gsm_response(struct gsm_mux *gsm, int addr, int control)
{
 gsm_send(gsm, addr, 0, control);
}
