
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int adp5061_get_array_index(const int *array, u8 size, int val)
{
 int i;

 for (i = 1; i < size; i++) {
  if (val < array[i])
   break;
 }

 return i-1;
}
