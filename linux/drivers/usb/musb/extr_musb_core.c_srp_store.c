
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 struct musb* dev_to_musb (struct device*) ;
 int musb_g_wakeup (struct musb*) ;
 int sscanf (char const*,char*,unsigned short*) ;

__attribute__((used)) static ssize_t srp_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t n)
{
 struct musb *musb = dev_to_musb(dev);
 unsigned short srp;

 if (sscanf(buf, "%hu", &srp) != 1
   || (srp != 1)) {
  dev_err(dev, "SRP: Value must be 1\n");
  return -EINVAL;
 }

 if (srp == 1)
  musb_g_wakeup(musb);

 return n;
}
