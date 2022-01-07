
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8 cw1200_queue_get_generation(u32 packet_id)
{
 return (packet_id >> 8) & 0xFF;
}
