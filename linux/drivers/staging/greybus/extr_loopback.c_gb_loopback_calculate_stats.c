
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct gb_loopback {scalar_t__ iteration_count; scalar_t__ iteration_max; scalar_t__ requests_completed; int ts; } ;
typedef int ktime_t ;


 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ gb_loopback_calc_latency (int ,int ) ;
 int gb_loopback_calculate_latency_stats (struct gb_loopback*) ;
 int gb_loopback_nsec_to_usec_latency (scalar_t__) ;
 int gb_loopback_requests_update (struct gb_loopback*,int ) ;
 int gb_loopback_throughput_update (struct gb_loopback*,int ) ;
 int ktime_get () ;

__attribute__((used)) static void gb_loopback_calculate_stats(struct gb_loopback *gb, bool error)
{
 u64 nlat;
 u32 lat;
 ktime_t te;

 if (!error) {
  gb->requests_completed++;
  gb_loopback_calculate_latency_stats(gb);
 }

 te = ktime_get();
 nlat = gb_loopback_calc_latency(gb->ts, te);
 if (nlat >= NSEC_PER_SEC || gb->iteration_count == gb->iteration_max) {
  lat = gb_loopback_nsec_to_usec_latency(nlat);

  gb_loopback_throughput_update(gb, lat);
  gb_loopback_requests_update(gb, lat);

  if (gb->iteration_count != gb->iteration_max) {
   gb->ts = te;
   gb->requests_completed = 0;
  }
 }
}
