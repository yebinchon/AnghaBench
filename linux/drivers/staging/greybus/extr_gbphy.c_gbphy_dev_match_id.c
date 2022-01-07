
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbphy_driver {struct gbphy_device_id* id_table; } ;
struct gbphy_device_id {scalar_t__ protocol_id; } ;
struct gbphy_device {TYPE_1__* cport_desc; } ;
struct TYPE_2__ {scalar_t__ protocol_id; } ;



__attribute__((used)) static const struct gbphy_device_id *
gbphy_dev_match_id(struct gbphy_device *gbphy_dev,
     struct gbphy_driver *gbphy_drv)
{
 const struct gbphy_device_id *id = gbphy_drv->id_table;

 if (!id)
  return ((void*)0);

 for (; id->protocol_id; id++)
  if (id->protocol_id == gbphy_dev->cport_desc->protocol_id)
   return id;

 return ((void*)0);
}
