
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int CAPABILITY_DOUBLE_ANTENNA ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;

__attribute__((used)) static inline bool
rt2x00_has_cap_double_antenna(struct rt2x00_dev *rt2x00dev)
{
 return rt2x00_has_cap_flag(rt2x00dev, CAPABILITY_DOUBLE_ANTENNA);
}
