
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smbios_device {int list; void* call_fn; struct device* device; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int ) ;
 struct smbios_device* devm_kzalloc (struct device*,int,int ) ;
 int get_device (struct device*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smbios_device_list ;
 int smbios_mutex ;

int dell_smbios_register_device(struct device *d, void *call_fn)
{
 struct smbios_device *priv;

 priv = devm_kzalloc(d, sizeof(struct smbios_device), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 get_device(d);
 priv->device = d;
 priv->call_fn = call_fn;
 mutex_lock(&smbios_mutex);
 list_add_tail(&priv->list, &smbios_device_list);
 mutex_unlock(&smbios_mutex);
 dev_dbg(d, "Added device: %s\n", d->driver->name);
 return 0;
}
