
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t spc_used(size_t head, size_t tail, size_t size)
{
 int diff = head - tail;

 if (diff >= 0)
  return diff;
 else
  return size + diff;
}
