
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux_net {int ref; } ;


 int kref_put (int *,int ) ;
 int net_free ;

__attribute__((used)) static inline void muxnet_put(struct gsm_mux_net *mux_net)
{
 kref_put(&mux_net->ref, net_free);
}
