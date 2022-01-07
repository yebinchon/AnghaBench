
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_rate {int dummy; } ;


 struct rt2x00_rate const* rt2x00_supported_rates ;

__attribute__((used)) static inline const struct rt2x00_rate *rt2x00_get_rate(const u16 hw_value)
{
 return &rt2x00_supported_rates[hw_value & 0xff];
}
