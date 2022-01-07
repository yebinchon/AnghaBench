
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int cap_flags; } ;
typedef enum rt2x00_capability_flags { ____Placeholder_rt2x00_capability_flags } rt2x00_capability_flags ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline bool
rt2x00_has_cap_flag(struct rt2x00_dev *rt2x00dev,
      enum rt2x00_capability_flags cap_flag)
{
 return test_bit(cap_flag, &rt2x00dev->cap_flags);
}
