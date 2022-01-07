
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_btt {int uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int dev_dbg (struct device*,char*,size_t,char const*,char*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 size_t nd_uuid_store (struct device*,int *,char const*,size_t) ;
 struct nd_btt* to_nd_btt (struct device*) ;

__attribute__((used)) static ssize_t uuid_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct nd_btt *nd_btt = to_nd_btt(dev);
 ssize_t rc;

 nd_device_lock(dev);
 rc = nd_uuid_store(dev, &nd_btt->uuid, buf, len);
 dev_dbg(dev, "result: %zd wrote: %s%s", rc, buf,
   buf[len - 1] == '\n' ? "" : "\n");
 nd_device_unlock(dev);

 return rc ? rc : len;
}
