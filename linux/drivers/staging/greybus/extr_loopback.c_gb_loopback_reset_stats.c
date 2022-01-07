
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_loopback_stats {int min; } ;
struct gb_loopback {int ts; scalar_t__ gbphy_latency_ts; scalar_t__ apbridge_latency_ts; int gbphy_firmware_latency; int apbridge_unipro_latency; int requests_per_second; int throughput; int latency; } ;


 int U32_MAX ;
 int ktime_set (int ,int ) ;
 int memcpy (int *,struct gb_loopback_stats*,int) ;

__attribute__((used)) static void gb_loopback_reset_stats(struct gb_loopback *gb)
{
 struct gb_loopback_stats reset = {
  .min = U32_MAX,
 };


 memcpy(&gb->latency, &reset,
        sizeof(struct gb_loopback_stats));
 memcpy(&gb->throughput, &reset,
        sizeof(struct gb_loopback_stats));
 memcpy(&gb->requests_per_second, &reset,
        sizeof(struct gb_loopback_stats));
 memcpy(&gb->apbridge_unipro_latency, &reset,
        sizeof(struct gb_loopback_stats));
 memcpy(&gb->gbphy_firmware_latency, &reset,
        sizeof(struct gb_loopback_stats));


 gb->apbridge_latency_ts = 0;
 gb->gbphy_latency_ts = 0;
 gb->ts = ktime_set(0, 0);
}
