
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_device_id {scalar_t__ id; } ;
struct zorro_dev {scalar_t__ id; } ;


 scalar_t__ ZORRO_WILDCARD ;

const struct zorro_device_id *
zorro_match_device(const struct zorro_device_id *ids,
     const struct zorro_dev *z)
{
 while (ids->id) {
  if (ids->id == ZORRO_WILDCARD || ids->id == z->id)
   return ids;
  ids++;
 }
 return ((void*)0);
}
