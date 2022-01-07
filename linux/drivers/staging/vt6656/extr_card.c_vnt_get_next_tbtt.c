
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int do_div (int,int) ;

u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval)
{
 u32 beacon_int;

 beacon_int = beacon_interval * 1024;




 if (beacon_int) {
  do_div(tsf, beacon_int);
  tsf += 1;
  tsf *= beacon_int;
 }

 return tsf;
}
