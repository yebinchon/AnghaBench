
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_pmem {char* alt_name; } ;
struct nd_namespace_blk {char* alt_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;

__attribute__((used)) static ssize_t alt_name_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 char *ns_altname;

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  ns_altname = nspm->alt_name;
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  ns_altname = nsblk->alt_name;
 } else
  return -ENXIO;

 return sprintf(buf, "%s\n", ns_altname ? ns_altname : "");
}
