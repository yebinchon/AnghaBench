
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ const u16 ;
struct TYPE_2__ {scalar_t__ fcnt; } ;


 scalar_t__ CDT3_BD_MASK ;
 TYPE_1__ g ;

__attribute__((used)) static inline bool check_bytes_per_frame(u32 bytes_per_frame)
{
 u16 const bd_factor = g.fcnt + 2;
 u16 const max_size = ((u16)CDT3_BD_MASK + 1u) >> bd_factor;

 if (bytes_per_frame <= 0)
  return 0;

 if (bytes_per_frame > max_size)
  return 0;

 return 1;
}
