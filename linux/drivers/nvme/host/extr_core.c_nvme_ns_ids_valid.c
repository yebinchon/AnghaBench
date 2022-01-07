
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_ids {int eui64; int nguid; int uuid; } ;


 scalar_t__ memchr_inv (int ,int ,int) ;
 int uuid_is_null (int *) ;

__attribute__((used)) static bool nvme_ns_ids_valid(struct nvme_ns_ids *ids)
{
 return !uuid_is_null(&ids->uuid) ||
  memchr_inv(ids->nguid, 0, sizeof(ids->nguid)) ||
  memchr_inv(ids->eui64, 0, sizeof(ids->eui64));
}
