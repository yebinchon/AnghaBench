
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_loopback_transfer_response {int dummy; } ;
struct gb_loopback_transfer_request {int dummy; } ;
struct gb_loopback {int type; int size; int requests_completed; int throughput; } ;





 int USEC_PER_SEC ;
 int gb_loopback_update_stats_window (int *,int,int ) ;

__attribute__((used)) static void gb_loopback_throughput_update(struct gb_loopback *gb, u32 latency)
{
 u64 aggregate_size = sizeof(struct gb_operation_msg_hdr) * 2;

 switch (gb->type) {
 case 130:
  break;
 case 129:
  aggregate_size += sizeof(struct gb_loopback_transfer_request) +
      gb->size;
  break;
 case 128:
  aggregate_size += sizeof(struct gb_loopback_transfer_request) +
      sizeof(struct gb_loopback_transfer_response) +
      gb->size * 2;
  break;
 default:
  return;
 }

 aggregate_size *= gb->requests_completed;
 aggregate_size *= USEC_PER_SEC;
 gb_loopback_update_stats_window(&gb->throughput, aggregate_size,
     latency);
}
