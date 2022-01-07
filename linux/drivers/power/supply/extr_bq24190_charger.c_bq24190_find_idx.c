
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 bq24190_find_idx(const int tbl[], int tbl_size, int v)
{
 int i;

 for (i = 1; i < tbl_size; i++)
  if (v < tbl[i])
   break;

 return i - 1;
}
