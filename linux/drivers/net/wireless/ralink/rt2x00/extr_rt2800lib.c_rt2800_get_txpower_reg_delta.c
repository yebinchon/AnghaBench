
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int min (int,int ) ;
 scalar_t__ rt2x00_has_cap_power_limit (struct rt2x00_dev*) ;

__attribute__((used)) static int rt2800_get_txpower_reg_delta(struct rt2x00_dev *rt2x00dev,
     int power_level, int max_power)
{
 int delta;

 if (rt2x00_has_cap_power_limit(rt2x00dev))
  return 0;
 delta = power_level - max_power;
 return min(delta, 0);
}
