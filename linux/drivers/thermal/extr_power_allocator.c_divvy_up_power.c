
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int min (int,int) ;

__attribute__((used)) static void divvy_up_power(u32 *req_power, u32 *max_power, int num_actors,
      u32 total_req_power, u32 power_range,
      u32 *granted_power, u32 *extra_actor_power)
{
 u32 extra_power, capped_extra_power;
 int i;




 if (!total_req_power)
  total_req_power = 1;

 capped_extra_power = 0;
 extra_power = 0;
 for (i = 0; i < num_actors; i++) {
  u64 req_range = (u64)req_power[i] * power_range;

  granted_power[i] = DIV_ROUND_CLOSEST_ULL(req_range,
        total_req_power);

  if (granted_power[i] > max_power[i]) {
   extra_power += granted_power[i] - max_power[i];
   granted_power[i] = max_power[i];
  }

  extra_actor_power[i] = max_power[i] - granted_power[i];
  capped_extra_power += extra_actor_power[i];
 }

 if (!extra_power)
  return;





 extra_power = min(extra_power, capped_extra_power);
 if (capped_extra_power > 0)
  for (i = 0; i < num_actors; i++)
   granted_power[i] += (extra_actor_power[i] *
     extra_power) / capped_extra_power;
}
