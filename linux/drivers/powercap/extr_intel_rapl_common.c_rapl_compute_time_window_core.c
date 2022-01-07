
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rapl_package {int time_unit; } ;


 int div64_u64 (int,int) ;
 int do_div (int,int) ;
 int ilog2 (int) ;

__attribute__((used)) static u64 rapl_compute_time_window_core(struct rapl_package *rp, u64 value,
      bool to_raw)
{
 u64 f, y;





 if (!to_raw) {
  f = (value & 0x60) >> 5;
  y = value & 0x1f;
  value = (1 << y) * (4 + f) * rp->time_unit / 4;
 } else {
  do_div(value, rp->time_unit);
  y = ilog2(value);
  f = div64_u64(4 * (value - (1 << y)), 1 << y);
  value = (y & 0x1f) | ((f & 0x3) << 5);
 }
 return value;
}
