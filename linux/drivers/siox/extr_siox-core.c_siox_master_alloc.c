
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; int * type; int * bus; } ;
struct siox_master {int busno; TYPE_1__ dev; int poll_interval; } ;
struct device {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int GFP_KERNEL ;
 int HZ ;
 int dev_set_drvdata (TYPE_1__*,struct siox_master*) ;
 int device_initialize (TYPE_1__*) ;
 struct siox_master* kzalloc (int,int ) ;
 int siox_bus_type ;
 int siox_master_type ;

struct siox_master *siox_master_alloc(struct device *dev,
          size_t size)
{
 struct siox_master *smaster;

 if (!dev)
  return ((void*)0);

 smaster = kzalloc(sizeof(*smaster) + size, GFP_KERNEL);
 if (!smaster)
  return ((void*)0);

 device_initialize(&smaster->dev);

 smaster->busno = -1;
 smaster->dev.bus = &siox_bus_type;
 smaster->dev.type = &siox_master_type;
 smaster->dev.parent = dev;
 smaster->poll_interval = DIV_ROUND_UP(HZ, 40);

 dev_set_drvdata(&smaster->dev, &smaster[1]);

 return smaster;
}
