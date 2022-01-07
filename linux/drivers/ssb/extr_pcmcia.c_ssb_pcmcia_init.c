
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_bus {scalar_t__ bustype; TYPE_1__* host_pcmcia; int sprom_mutex; int sprom_size; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SSB_BUSTYPE_PCMCIA ;
 int SSB_PCMCIA_SPROM_SIZE ;
 int dev_attr_ssb_sprom ;
 int device_create_file (int *,int *) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int ssb_pcmcia_hardware_setup (struct ssb_bus*) ;

int ssb_pcmcia_init(struct ssb_bus *bus)
{
 int err;

 if (bus->bustype != SSB_BUSTYPE_PCMCIA)
  return 0;

 err = ssb_pcmcia_hardware_setup(bus);
 if (err)
  goto error;

 bus->sprom_size = SSB_PCMCIA_SPROM_SIZE;
 mutex_init(&bus->sprom_mutex);
 err = device_create_file(&bus->host_pcmcia->dev, &dev_attr_ssb_sprom);
 if (err)
  goto error;

 return 0;
error:
 pr_err("Failed to initialize PCMCIA host device\n");
 return err;
}
