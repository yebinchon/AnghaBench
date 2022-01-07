
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slim_device_id {scalar_t__ manf_id; scalar_t__ prod_code; scalar_t__ dev_index; scalar_t__ instance; } ;
struct TYPE_2__ {scalar_t__ manf_id; scalar_t__ prod_code; scalar_t__ dev_index; scalar_t__ instance; } ;
struct slim_device {TYPE_1__ e_addr; } ;



__attribute__((used)) static const struct slim_device_id *slim_match(const struct slim_device_id *id,
            const struct slim_device *sbdev)
{
 while (id->manf_id != 0 || id->prod_code != 0) {
  if (id->manf_id == sbdev->e_addr.manf_id &&
      id->prod_code == sbdev->e_addr.prod_code &&
      id->dev_index == sbdev->e_addr.dev_index &&
      id->instance == sbdev->e_addr.instance)
   return id;
  id++;
 }
 return ((void*)0);
}
