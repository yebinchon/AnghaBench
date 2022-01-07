
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int a10sr_reset_shift(unsigned long id)
{
 switch (id) {
 case 131:
  return 1;
 case 129:
 case 130:
 case 132:
 case 128:
  return id + 11;
 default:
  return -EINVAL;
 }
}
