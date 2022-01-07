
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int force_raw; } ;


 int strtobool (char const*,int*) ;
 TYPE_1__* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t force_raw_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 bool force_raw;
 int rc = strtobool(buf, &force_raw);

 if (rc)
  return rc;

 to_ndns(dev)->force_raw = force_raw;
 return len;
}
