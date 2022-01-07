
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int current_to_hw(const unsigned int *tbl, size_t size, unsigned int val)
{
 size_t i;

 for (i = 0; i < size; i++)
  if (val < tbl[i])
   break;
 return i > 0 ? i - 1 : -EINVAL;
}
