
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gb_loopback {int requests_completed; int requests_per_second; } ;


 int USEC_PER_SEC ;
 int gb_loopback_update_stats_window (int *,int,int ) ;

__attribute__((used)) static void gb_loopback_requests_update(struct gb_loopback *gb, u32 latency)
{
 u64 req = gb->requests_completed * USEC_PER_SEC;

 gb_loopback_update_stats_window(&gb->requests_per_second, req, latency);
}
