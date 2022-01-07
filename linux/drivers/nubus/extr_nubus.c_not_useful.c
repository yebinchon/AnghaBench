
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int not_useful(void *p, int map)
{
 unsigned long pv = (unsigned long)p;

 pv &= 3;
 if (map & (1 << pv))
  return 0;
 return 1;
}
