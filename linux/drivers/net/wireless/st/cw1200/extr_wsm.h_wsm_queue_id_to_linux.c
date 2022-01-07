
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 wsm_queue_id_to_linux(u8 queue_id)
{
 static const u8 queue_mapping[] = {
  2, 3, 1, 0
 };
 return queue_mapping[queue_id];
}
