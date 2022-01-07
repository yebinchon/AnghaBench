
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rt2x00_dev {int dummy; } ;


 scalar_t__ const rt2x00_rev (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,scalar_t__ const) ;

__attribute__((used)) static inline bool rt2x00_rt_rev_gte(struct rt2x00_dev *rt2x00dev,
         const u16 rt, const u16 rev)
{
 return (rt2x00_rt(rt2x00dev, rt) && rt2x00_rev(rt2x00dev) >= rev);
}
