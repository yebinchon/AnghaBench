
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_random_bytes (int*,int) ;

__attribute__((used)) static void iscsit_create_random_array(u32 *array, u32 count)
{
 int i, j, k;

 if (count == 1) {
  array[0] = 0;
  return;
 }

 for (i = 0; i < count; i++) {
redo:
  get_random_bytes(&j, sizeof(u32));
  j = (1 + (int) (9999 + 1) - j) % count;
  for (k = 0; k < i + 1; k++) {
   j |= 0x80000000;
   if ((array[k] & 0x80000000) && (array[k] == j))
    goto redo;
  }
  array[i] = j;
 }

 for (i = 0; i < count; i++)
  array[i] &= ~0x80000000;
}
