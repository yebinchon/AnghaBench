
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int pcistub_reg_add (int,int,int,int,int,int,int) ;
 int str_to_quirk (char const*,int*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static ssize_t quirks_store(struct device_driver *drv, const char *buf,
       size_t count)
{
 int domain, bus, slot, func, reg, size, mask;
 int err;

 err = str_to_quirk(buf, &domain, &bus, &slot, &func, &reg, &size,
      &mask);
 if (err)
  goto out;

 err = pcistub_reg_add(domain, bus, slot, func, reg, size, mask);

out:
 if (!err)
  err = count;
 return err;
}
