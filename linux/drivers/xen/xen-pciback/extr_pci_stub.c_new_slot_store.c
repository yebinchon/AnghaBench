
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int pcistub_device_id_add (int,int,int,int) ;
 int str_to_slot (char const*,int*,int*,int*,int*) ;

__attribute__((used)) static ssize_t new_slot_store(struct device_driver *drv, const char *buf,
         size_t count)
{
 int domain, bus, slot, func;
 int err;

 err = str_to_slot(buf, &domain, &bus, &slot, &func);
 if (err)
  goto out;

 err = pcistub_device_id_add(domain, bus, slot, func);

out:
 if (!err)
  err = count;
 return err;
}
