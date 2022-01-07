
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_namespace_pmem {char* alt_name; } ;
struct nd_namespace_blk {char* alt_name; } ;
struct device {scalar_t__ driver; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ claim; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENOMEM ;
 size_t ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ NSLABEL_NAME_LEN ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t const,int ) ;
 char* kzalloc (scalar_t__,int ) ;
 int sprintf (char*,char*,char*) ;
 char* strim (char*) ;
 scalar_t__ strlen (char*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;
 TYPE_1__* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t __alt_name_store(struct device *dev, const char *buf,
  const size_t len)
{
 char *input, *pos, *alt_name, **ns_altname;
 ssize_t rc;

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  ns_altname = &nspm->alt_name;
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  ns_altname = &nsblk->alt_name;
 } else
  return -ENXIO;

 if (dev->driver || to_ndns(dev)->claim)
  return -EBUSY;

 input = kstrndup(buf, len, GFP_KERNEL);
 if (!input)
  return -ENOMEM;

 pos = strim(input);
 if (strlen(pos) + 1 > NSLABEL_NAME_LEN) {
  rc = -EINVAL;
  goto out;
 }

 alt_name = kzalloc(NSLABEL_NAME_LEN, GFP_KERNEL);
 if (!alt_name) {
  rc = -ENOMEM;
  goto out;
 }
 kfree(*ns_altname);
 *ns_altname = alt_name;
 sprintf(*ns_altname, "%s", pos);
 rc = len;

out:
 kfree(input);
 return rc;
}
