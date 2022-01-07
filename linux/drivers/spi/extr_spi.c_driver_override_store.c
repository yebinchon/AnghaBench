
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int kfree (char const*) ;
 char* kstrndup (char const*,size_t const,int ) ;
 char* memchr (char const*,char,size_t) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t driver_override_store(struct device *dev,
         struct device_attribute *a,
         const char *buf, size_t count)
{
 struct spi_device *spi = to_spi_device(dev);
 const char *end = memchr(buf, '\n', count);
 const size_t len = end ? end - buf : count;
 const char *driver_override, *old;


 if (len >= (PAGE_SIZE - 1))
  return -EINVAL;

 driver_override = kstrndup(buf, len, GFP_KERNEL);
 if (!driver_override)
  return -ENOMEM;

 device_lock(dev);
 old = spi->driver_override;
 if (len) {
  spi->driver_override = driver_override;
 } else {

  spi->driver_override = ((void*)0);
  kfree(driver_override);
 }
 device_unlock(dev);
 kfree(old);

 return count;
}
