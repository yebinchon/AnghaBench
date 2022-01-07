
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zorro_id ;
struct zorro_dev {scalar_t__ id; } ;


 scalar_t__ ZORRO_WILDCARD ;
 struct zorro_dev* zorro_autocon ;
 int zorro_num_autocon ;

struct zorro_dev *zorro_find_device(zorro_id id, struct zorro_dev *from)
{
 struct zorro_dev *z;

 if (!zorro_num_autocon)
  return ((void*)0);

 for (z = from ? from+1 : &zorro_autocon[0];
      z < zorro_autocon+zorro_num_autocon;
      z++)
  if (id == ZORRO_WILDCARD || id == z->id)
   return z;
 return ((void*)0);
}
