
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {unsigned int num; } ;


 unsigned int NUM_DLCI ;

__attribute__((used)) static inline unsigned int mux_num_to_base(struct gsm_mux *gsm)
{
 return gsm->num * NUM_DLCI;
}
