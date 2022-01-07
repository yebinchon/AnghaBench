
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {int dpPortBase; } ;


 int writel (int ,int ) ;

__attribute__((used)) static inline void write_dpPort(struct lynx_accel *accel, u32 data)
{
 writel(data, accel->dpPortBase);
}
