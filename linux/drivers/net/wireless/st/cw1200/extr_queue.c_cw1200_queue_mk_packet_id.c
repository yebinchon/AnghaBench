
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 cw1200_queue_mk_packet_id(u8 queue_generation, u8 queue_id,
         u8 item_generation, u8 item_id)
{
 return ((u32)item_id << 0) |
  ((u32)item_generation << 8) |
  ((u32)queue_id << 16) |
  ((u32)queue_generation << 24);
}
