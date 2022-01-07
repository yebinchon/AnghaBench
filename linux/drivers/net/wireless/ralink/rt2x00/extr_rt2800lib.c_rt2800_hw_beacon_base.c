
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 unsigned int HW_BEACON_BASE (unsigned int) ;

__attribute__((used)) static unsigned int rt2800_hw_beacon_base(struct rt2x00_dev *rt2x00dev,
       unsigned int index)
{
 return HW_BEACON_BASE(index);
}
