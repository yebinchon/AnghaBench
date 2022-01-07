
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int comedi_check_trigger_is_unique(unsigned int src)
{

 if ((src & (src - 1)) != 0)
  return -EINVAL;
 return 0;
}
