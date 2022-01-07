
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {scalar_t__ dprBase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 read_dpr(struct lynx_accel *accel, int offset)
{
 return readl(accel->dprBase + offset);
}
