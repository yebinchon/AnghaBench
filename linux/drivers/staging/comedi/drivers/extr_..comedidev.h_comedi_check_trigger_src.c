
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int TRIG_INVALID ;

__attribute__((used)) static inline int comedi_check_trigger_src(unsigned int *src,
        unsigned int flags)
{
 unsigned int orig_src = *src;

 *src = orig_src & flags;
 if (*src == TRIG_INVALID || *src != orig_src)
  return -EINVAL;
 return 0;
}
