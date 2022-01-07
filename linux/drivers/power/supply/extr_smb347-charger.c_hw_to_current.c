
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int hw_to_current(const unsigned int *tbl, size_t size, unsigned int val)
{
 if (val >= size)
  return -EINVAL;
 return tbl[val];
}
