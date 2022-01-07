
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int rt9455_find_idx(const int tbl[], int tbl_size, int v)
{
 int i;







 for (i = 0; i < tbl_size - 1; i++)
  if (v <= tbl[i])
   return i;

 return (tbl_size - 1);
}
