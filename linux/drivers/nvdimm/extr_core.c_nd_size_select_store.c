
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ driver; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;

ssize_t nd_size_select_store(struct device *dev, const char *buf,
  unsigned long *current_size, const unsigned long *supported)
{
 unsigned long lbasize;
 int rc, i;

 if (dev->driver)
  return -EBUSY;

 rc = kstrtoul(buf, 0, &lbasize);
 if (rc)
  return rc;

 for (i = 0; supported[i]; i++)
  if (lbasize == supported[i])
   break;

 if (supported[i]) {
  *current_size = lbasize;
  return 0;
 } else {
  return -EINVAL;
 }
}
