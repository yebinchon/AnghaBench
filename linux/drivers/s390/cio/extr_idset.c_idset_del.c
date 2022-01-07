
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_id; int bitmap; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void idset_del(struct idset *set, int ssid, int id)
{
 clear_bit(ssid * set->num_id + id, set->bitmap);
}
