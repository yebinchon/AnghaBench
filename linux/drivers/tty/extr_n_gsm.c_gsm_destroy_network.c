
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux_net {int dummy; } ;
struct gsm_dlci {int net; } ;


 int muxnet_put (struct gsm_mux_net*) ;
 struct gsm_mux_net* netdev_priv (int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void gsm_destroy_network(struct gsm_dlci *dlci)
{
 struct gsm_mux_net *mux_net;

 pr_debug("destroy network interface");
 if (!dlci->net)
  return;
 mux_net = netdev_priv(dlci->net);
 muxnet_put(mux_net);
}
