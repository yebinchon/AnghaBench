
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

u64 CARDqGetNextTBTT(u64 qwTSF, unsigned short wBeaconInterval)
{
 u32 beacon_int;

 beacon_int = wBeaconInterval * 1024;
 if (beacon_int) {
  do_div(qwTSF, beacon_int);
  qwTSF += 1;
  qwTSF *= beacon_int;
 }

 return qwTSF;
}
