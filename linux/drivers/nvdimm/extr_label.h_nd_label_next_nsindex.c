
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int nd_label_next_nsindex(int index)
{
 if (index < 0)
  return -1;

 return (index + 1) % 2;
}
