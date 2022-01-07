
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DBR_BLOCK_SIZE ;

__attribute__((used)) static int dbr_get_mask_size(u16 size)
{
 int i;

 for (i = 0; i < 6; i++)
  if (size <= (DBR_BLOCK_SIZE << i))
   return 1 << i;
 return 0;
}
