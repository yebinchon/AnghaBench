
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux_net {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void muxnet_get(struct gsm_mux_net *mux_net)
{
 kref_get(&mux_net->ref);
}
