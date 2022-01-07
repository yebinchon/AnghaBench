
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ CDT1_BS_ISOC_MASK ;
 scalar_t__ CDT3_BD_ISOC_MASK ;
 scalar_t__ ISOC_DBR_FACTOR ;

__attribute__((used)) static inline bool check_packet_length(u32 packet_length)
{
 u16 const max_size = ((u16)CDT3_BD_ISOC_MASK + 1u) / ISOC_DBR_FACTOR;

 if (packet_length <= 0)
  return 0;

 if (packet_length > max_size)
  return 0;

 if (packet_length - 1u > (u32)CDT1_BS_ISOC_MASK)
  return 0;

 return 1;
}
