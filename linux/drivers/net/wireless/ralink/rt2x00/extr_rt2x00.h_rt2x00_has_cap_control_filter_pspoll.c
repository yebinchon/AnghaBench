
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int CAPABILITY_CONTROL_FILTER_PSPOLL ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;

__attribute__((used)) static inline bool
rt2x00_has_cap_control_filter_pspoll(struct rt2x00_dev *rt2x00dev)
{
 return rt2x00_has_cap_flag(rt2x00dev, CAPABILITY_CONTROL_FILTER_PSPOLL);
}
