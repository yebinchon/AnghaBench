
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int bitmap_find_next_zero_area (unsigned long*,int,int,int,int ) ;
 int bitmap_set (unsigned long*,int,int) ;
 int gcd (int,int) ;

__attribute__((used)) static int pmap_schedule(unsigned long *map, int bits_per_period,
    int periods_in_map, int num_bits,
    int interval, int start, bool only_one_period)
{
 int interval_bits;
 int to_reserve;
 int first_end;
 int i;

 if (num_bits > bits_per_period)
  return -ENOSPC;


 interval = gcd(interval, periods_in_map);

 interval_bits = bits_per_period * interval;
 to_reserve = periods_in_map / interval;


 if (start >= interval_bits)
  return -ENOSPC;

 if (only_one_period)

  first_end = (start / bits_per_period + 1) * bits_per_period;
 else

  first_end = interval_bits;







 while (start + num_bits <= first_end) {
  int end;


  end = (start / bits_per_period + 1) * bits_per_period;


  start = bitmap_find_next_zero_area(map, end, start, num_bits,
         0);






  if (start >= end) {
   start = end;
   continue;
  }


  for (i = 1; i < to_reserve; i++) {
   int ith_start = start + interval_bits * i;
   int ith_end = end + interval_bits * i;
   int ret;


   ret = bitmap_find_next_zero_area(
    map, ith_start + num_bits, ith_start, num_bits,
    0);


   if (ret == ith_start)
    continue;


   ith_start = bitmap_find_next_zero_area(
    map, ith_end, ith_start, num_bits, 0);
   if (ith_start >= ith_end)

    start = end;
   else
    start = ith_start - interval_bits * i;
   break;
  }


  if (i == to_reserve)
   break;
 }

 if (start + num_bits > first_end)
  return -ENOSPC;

 for (i = 0; i < to_reserve; i++) {
  int ith_start = start + interval_bits * i;

  bitmap_set(map, ith_start, num_bits);
 }

 return start;
}
