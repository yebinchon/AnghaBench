
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static int board_id_in_array(u32 a[], int nelems, u32 board_id)
{
 int i;

 for (i = 0; i < nelems; i++)
  if (a[i] == board_id)
   return 1;
 return 0;
}
