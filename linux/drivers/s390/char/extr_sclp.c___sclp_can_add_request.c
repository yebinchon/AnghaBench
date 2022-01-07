
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int dummy; } ;


 scalar_t__ sclp_activation_state ;
 scalar_t__ sclp_activation_state_active ;
 struct sclp_req sclp_init_req ;
 scalar_t__ sclp_init_state ;
 scalar_t__ sclp_init_state_initialized ;
 struct sclp_req sclp_suspend_req ;
 scalar_t__ sclp_suspend_state ;
 scalar_t__ sclp_suspend_state_running ;

__attribute__((used)) static int __sclp_can_add_request(struct sclp_req *req)
{
 if (req == &sclp_suspend_req || req == &sclp_init_req)
  return 1;
 if (sclp_suspend_state != sclp_suspend_state_running)
  return 0;
 if (sclp_init_state != sclp_init_state_initialized)
  return 0;
 if (sclp_activation_state != sclp_activation_state_active)
  return 0;
 return 1;
}
