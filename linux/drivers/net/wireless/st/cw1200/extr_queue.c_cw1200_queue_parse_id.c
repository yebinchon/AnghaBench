
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void cw1200_queue_parse_id(u32 packet_id, u8 *queue_generation,
      u8 *queue_id, u8 *item_generation,
      u8 *item_id)
{
 *item_id = (packet_id >> 0) & 0xFF;
 *item_generation = (packet_id >> 8) & 0xFF;
 *queue_id = (packet_id >> 16) & 0xFF;
 *queue_generation = (packet_id >> 24) & 0xFF;
}
