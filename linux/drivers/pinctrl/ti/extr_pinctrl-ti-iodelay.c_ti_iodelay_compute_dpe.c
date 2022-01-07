
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 int div64_u64 (int,int) ;

__attribute__((used)) static inline u32 ti_iodelay_compute_dpe(u16 period, u16 ref, u16 delay,
      u16 delay_m)
{
 u64 m, d;


 m = 10 * (u64)period * (u64)ref;
 d = 2 * (u64)delay * (u64)delay_m;


 return div64_u64(m, d);
}
