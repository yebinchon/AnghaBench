
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int comedi_check_trigger_arg_min(unsigned int *arg,
            unsigned int val)
{
 if (*arg < val) {
  *arg = val;
  return -EINVAL;
 }
 return 0;
}
