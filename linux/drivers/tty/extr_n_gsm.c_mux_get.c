
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void mux_get(struct gsm_mux *gsm)
{
 kref_get(&gsm->ref);
}
