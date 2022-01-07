
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int EINVAL ;
 int ENOSPC ;
 int MAX_PWMS ;
 int allocated_pwms ;
 unsigned int bitmap_find_next_zero_area (int ,int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int alloc_pwms(int pwm, unsigned int count)
{
 unsigned int from = 0;
 unsigned int start;

 if (pwm >= MAX_PWMS)
  return -EINVAL;

 if (pwm >= 0)
  from = pwm;

 start = bitmap_find_next_zero_area(allocated_pwms, MAX_PWMS, from,
        count, 0);

 if (pwm >= 0 && start != pwm)
  return -EEXIST;

 if (start + count > MAX_PWMS)
  return -ENOSPC;

 return start;
}
