
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int TTY_MAX_COUNT ;
 scalar_t__* packet_type ;

__attribute__((used)) static int packet_type_to_index(u16 packetType)
{
 int i;

 for (i = 0; i < TTY_MAX_COUNT; i++) {
  if (packet_type[i] == packetType)
   return i;
 }

 return -1;
}
