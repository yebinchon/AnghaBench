
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int valid_request(int offset, int size)
{

 if ((size == 1 || size == 2 || size == 4) && (offset % size) == 0)
  return 1;
 return 0;
}
