
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int work_go_offline; int work_go_online; struct ipw_hardware* hardware; int close_lock; int lock; } ;
struct ipw_hardware {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int do_go_offline ;
 int do_go_online ;
 int ipwireless_associate_network (struct ipw_hardware*,struct ipw_network*) ;
 struct ipw_network* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct ipw_network *ipwireless_network_create(struct ipw_hardware *hw)
{
 struct ipw_network *network =
  kzalloc(sizeof(struct ipw_network), GFP_KERNEL);

 if (!network)
  return ((void*)0);

 spin_lock_init(&network->lock);
 mutex_init(&network->close_lock);

 network->hardware = hw;

 INIT_WORK(&network->work_go_online, do_go_online);
 INIT_WORK(&network->work_go_offline, do_go_offline);

 ipwireless_associate_network(hw, network);

 return network;
}
