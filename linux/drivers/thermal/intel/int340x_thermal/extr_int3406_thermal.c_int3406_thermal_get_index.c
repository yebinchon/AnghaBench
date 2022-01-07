
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;

__attribute__((used)) static int int3406_thermal_get_index(int *array, int nr, int value)
{
 int i;

 for (i = 2; i < nr; i++) {
  if (array[i] == value)
   break;
 }
 return i == nr ? -ENOENT : i;
}
