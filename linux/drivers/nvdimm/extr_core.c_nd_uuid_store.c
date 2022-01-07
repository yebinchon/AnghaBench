
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
typedef int u8 ;
struct device {scalar_t__ driver; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int *,int,int ) ;
 int nd_uuid_parse (struct device*,int *,char const*,size_t) ;

int nd_uuid_store(struct device *dev, u8 **uuid_out, const char *buf,
  size_t len)
{
 u8 uuid[16];
 int rc;

 if (dev->driver)
  return -EBUSY;

 rc = nd_uuid_parse(dev, uuid, buf, len);
 if (rc)
  return rc;

 kfree(*uuid_out);
 *uuid_out = kmemdup(uuid, sizeof(uuid), GFP_KERNEL);
 if (!(*uuid_out))
  return -ENOMEM;

 return 0;
}
