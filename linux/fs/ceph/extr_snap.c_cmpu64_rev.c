
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static int cmpu64_rev(const void *a, const void *b)
{
 if (*(u64 *)a < *(u64 *)b)
  return 1;
 if (*(u64 *)a > *(u64 *)b)
  return -1;
 return 0;
}
