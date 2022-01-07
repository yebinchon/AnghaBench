
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_ssid; int num_id; int bitmap; } ;


 int bitmap_empty (int ,int) ;

int idset_is_empty(struct idset *set)
{
 return bitmap_empty(set->bitmap, set->num_ssid * set->num_id);
}
