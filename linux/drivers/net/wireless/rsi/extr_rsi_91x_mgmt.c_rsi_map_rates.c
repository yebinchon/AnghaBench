
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int bitrate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int* mcs ;
 TYPE_1__* rsi_mcsrates ;
 TYPE_1__* rsi_rates ;

__attribute__((used)) static bool rsi_map_rates(u16 rate, int *offset)
{
 int kk;
 for (kk = 0; kk < ARRAY_SIZE(rsi_mcsrates); kk++) {
  if (rate == mcs[kk]) {
   *offset = kk;
   return 0;
  }
 }

 for (kk = 0; kk < ARRAY_SIZE(rsi_rates); kk++) {
  if (rate == rsi_rates[kk].bitrate / 5) {
   *offset = kk;
   break;
  }
 }
 return 1;
}
