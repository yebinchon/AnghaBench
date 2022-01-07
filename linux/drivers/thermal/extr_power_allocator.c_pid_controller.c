
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct thermal_zone_device {scalar_t__ temperature; int passive_delay; TYPE_1__* tzp; struct power_allocator_params* governor_data; } ;
struct power_allocator_params {scalar_t__ err_integral; scalar_t__ prev_err; int trip_switch_on; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ sustainable_power; scalar_t__ integral_cutoff; int k_d; int k_i; int k_pu; int k_po; } ;


 scalar_t__ abs (scalar_t__) ;
 scalar_t__ clamp (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ div_frac (scalar_t__,int ) ;
 int estimate_pid_constants (struct thermal_zone_device*,scalar_t__,int ,int,int) ;
 scalar_t__ estimate_sustainable_power (struct thermal_zone_device*) ;
 scalar_t__ frac_to_int (scalar_t__) ;
 scalar_t__ int_to_frac (scalar_t__) ;
 scalar_t__ mul_frac (int ,scalar_t__) ;
 int trace_thermal_power_allocator_pid (struct thermal_zone_device*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 pid_controller(struct thermal_zone_device *tz,
     int control_temp,
     u32 max_allocatable_power)
{
 s64 p, i, d, power_range;
 s32 err, max_power_frac;
 u32 sustainable_power;
 struct power_allocator_params *params = tz->governor_data;

 max_power_frac = int_to_frac(max_allocatable_power);

 if (tz->tzp->sustainable_power) {
  sustainable_power = tz->tzp->sustainable_power;
 } else {
  sustainable_power = estimate_sustainable_power(tz);
  estimate_pid_constants(tz, sustainable_power,
           params->trip_switch_on, control_temp,
           1);
 }

 err = control_temp - tz->temperature;
 err = int_to_frac(err);


 p = mul_frac(err < 0 ? tz->tzp->k_po : tz->tzp->k_pu, err);







 i = mul_frac(tz->tzp->k_i, params->err_integral);

 if (err < int_to_frac(tz->tzp->integral_cutoff)) {
  s64 i_next = i + mul_frac(tz->tzp->k_i, err);

  if (abs(i_next) < max_power_frac) {
   i = i_next;
   params->err_integral += err;
  }
 }
 d = mul_frac(tz->tzp->k_d, err - params->prev_err);
 d = div_frac(d, tz->passive_delay);
 params->prev_err = err;

 power_range = p + i + d;


 power_range = sustainable_power + frac_to_int(power_range);

 power_range = clamp(power_range, (s64)0, (s64)max_allocatable_power);

 trace_thermal_power_allocator_pid(tz, frac_to_int(err),
       frac_to_int(params->err_integral),
       frac_to_int(p), frac_to_int(i),
       frac_to_int(d), power_range);

 return power_range;
}
