
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct greybus_descriptor_cport {int dummy; } ;
struct TYPE_6__ {int dma_mask; int groups; int * type; int * bus; TYPE_1__* parent; } ;
struct gbphy_device {int id; TYPE_2__ dev; struct greybus_descriptor_cport* cport_desc; struct gb_bundle* bundle; } ;
struct TYPE_5__ {int dma_mask; } ;
struct gb_bundle {TYPE_1__ dev; } ;


 int ENOMEM ;
 struct gbphy_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_register (TYPE_2__*) ;
 int gbphy_bus_type ;
 int gbphy_dev_groups ;
 int gbphy_id ;
 int greybus_gbphy_dev_type ;
 int ida_simple_get (int *,int,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 struct gbphy_device* kzalloc (int,int ) ;
 int put_device (TYPE_2__*) ;

__attribute__((used)) static struct gbphy_device *gb_gbphy_create_dev(struct gb_bundle *bundle,
    struct greybus_descriptor_cport *cport_desc)
{
 struct gbphy_device *gbphy_dev;
 int retval;
 int id;

 id = ida_simple_get(&gbphy_id, 1, 0, GFP_KERNEL);
 if (id < 0)
  return ERR_PTR(id);

 gbphy_dev = kzalloc(sizeof(*gbphy_dev), GFP_KERNEL);
 if (!gbphy_dev) {
  ida_simple_remove(&gbphy_id, id);
  return ERR_PTR(-ENOMEM);
 }

 gbphy_dev->id = id;
 gbphy_dev->bundle = bundle;
 gbphy_dev->cport_desc = cport_desc;
 gbphy_dev->dev.parent = &bundle->dev;
 gbphy_dev->dev.bus = &gbphy_bus_type;
 gbphy_dev->dev.type = &greybus_gbphy_dev_type;
 gbphy_dev->dev.groups = gbphy_dev_groups;
 gbphy_dev->dev.dma_mask = bundle->dev.dma_mask;
 dev_set_name(&gbphy_dev->dev, "gbphy%d", id);

 retval = device_register(&gbphy_dev->dev);
 if (retval) {
  put_device(&gbphy_dev->dev);
  return ERR_PTR(retval);
 }

 return gbphy_dev;
}
