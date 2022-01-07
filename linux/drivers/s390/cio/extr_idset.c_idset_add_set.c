
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_ssid; int num_id; int bitmap; } ;


 int bitmap_or (int ,int ,int ,int) ;
 int min (int,int) ;

void idset_add_set(struct idset *to, struct idset *from)
{
 int len = min(to->num_ssid * to->num_id, from->num_ssid * from->num_id);

 bitmap_or(to->bitmap, to->bitmap, from->bitmap, len);
}
