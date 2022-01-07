
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u64 get_route(u32 route_hi, u32 route_lo)
{
 return (u64)route_hi << 32 | route_lo;
}
