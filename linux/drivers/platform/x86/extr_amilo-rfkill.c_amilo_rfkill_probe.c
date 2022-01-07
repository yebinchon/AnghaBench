
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dmi_system_id {int driver_data; } ;


 int ENOMEM ;
 int ENXIO ;
 int KBUILD_MODNAME ;
 int RFKILL_TYPE_WLAN ;
 int amilo_rfkill_dev ;
 int amilo_rfkill_id_table ;
 struct dmi_system_id* dmi_first_match (int ) ;
 int rfkill_alloc (int ,int *,int ,int ,int *) ;
 int rfkill_destroy (int ) ;
 int rfkill_register (int ) ;

__attribute__((used)) static int amilo_rfkill_probe(struct platform_device *device)
{
 int rc;
 const struct dmi_system_id *system_id =
  dmi_first_match(amilo_rfkill_id_table);

 if (!system_id)
  return -ENXIO;

 amilo_rfkill_dev = rfkill_alloc(KBUILD_MODNAME, &device->dev,
     RFKILL_TYPE_WLAN,
     system_id->driver_data, ((void*)0));
 if (!amilo_rfkill_dev)
  return -ENOMEM;

 rc = rfkill_register(amilo_rfkill_dev);
 if (rc)
  goto fail;

 return 0;

fail:
 rfkill_destroy(amilo_rfkill_dev);
 return rc;
}
