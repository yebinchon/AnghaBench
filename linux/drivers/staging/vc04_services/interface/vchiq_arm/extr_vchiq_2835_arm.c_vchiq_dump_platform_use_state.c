
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;


 int vchiq_arm_log_level ;
 int vchiq_log_info (int ,char*) ;

void
vchiq_dump_platform_use_state(struct vchiq_state *state)
{
 vchiq_log_info(vchiq_arm_log_level, "Suspend timer not in use");
}
