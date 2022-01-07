
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_ids {int eui64; int nguid; int uuid; } ;


 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ uuid_equal (int *,int *) ;

__attribute__((used)) static bool nvme_ns_ids_equal(struct nvme_ns_ids *a, struct nvme_ns_ids *b)
{
 return uuid_equal(&a->uuid, &b->uuid) &&
  memcmp(&a->nguid, &b->nguid, sizeof(a->nguid)) == 0 &&
  memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0;
}
