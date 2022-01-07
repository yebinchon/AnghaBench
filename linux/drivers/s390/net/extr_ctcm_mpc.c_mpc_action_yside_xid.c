
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsm_instance ;


 int YSIDE ;
 int mpc_action_side_xid (int *,void*,int ) ;

__attribute__((used)) static void mpc_action_yside_xid(fsm_instance *fsm, int event, void *arg)
{
 mpc_action_side_xid(fsm, arg, YSIDE);
}
