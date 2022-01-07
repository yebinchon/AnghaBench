
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_loopback {int gbphy_latency_ts; int gbphy_firmware_latency; int apbridge_latency_ts; int apbridge_unipro_latency; int kfifo_lat; int latency; int elapsed_nsecs; } ;
typedef int lat ;


 int gb_loopback_nsec_to_usec_latency (int ) ;
 int gb_loopback_update_stats (int *,int ) ;
 int kfifo_in (int *,unsigned char*,int) ;

__attribute__((used)) static void gb_loopback_calculate_latency_stats(struct gb_loopback *gb)
{
 u32 lat;


 lat = gb_loopback_nsec_to_usec_latency(gb->elapsed_nsecs);


 gb_loopback_update_stats(&gb->latency, lat);


 kfifo_in(&gb->kfifo_lat, (unsigned char *)&lat, sizeof(lat));


 gb_loopback_update_stats(&gb->apbridge_unipro_latency,
     gb->apbridge_latency_ts);
 gb_loopback_update_stats(&gb->gbphy_firmware_latency,
     gb->gbphy_latency_ts);
}
