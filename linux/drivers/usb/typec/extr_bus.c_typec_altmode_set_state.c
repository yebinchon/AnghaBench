
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct altmode {int nh; struct altmode* partner; } ;


 int blocking_notifier_call_chain (int *,int,int *) ;
 int is_typec_port (int ) ;
 struct altmode* to_altmode (struct typec_altmode*) ;
 int typec_altmode_set_mux (struct altmode*,int) ;

__attribute__((used)) static int typec_altmode_set_state(struct typec_altmode *adev, int state)
{
 bool is_port = is_typec_port(adev->dev.parent);
 struct altmode *port_altmode;
 int ret;

 port_altmode = is_port ? to_altmode(adev) : to_altmode(adev)->partner;

 ret = typec_altmode_set_mux(port_altmode, state);
 if (ret)
  return ret;

 blocking_notifier_call_chain(&port_altmode->nh, state, ((void*)0));

 return 0;
}
