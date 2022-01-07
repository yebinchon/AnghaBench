
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int ref; } ;


 int gsm_free_muxr ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void mux_put(struct gsm_mux *gsm)
{
 kref_put(&gsm->ref, gsm_free_muxr);
}
