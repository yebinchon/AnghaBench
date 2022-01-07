
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rproc_mem_entry {scalar_t__ len; scalar_t__ da; } ;
struct device {int dummy; } ;
struct rproc {struct device dev; } ;


 int EINVAL ;
 scalar_t__ FW_RSC_ADDR_ANY ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int rproc_check_carveout_da(struct rproc *rproc,
       struct rproc_mem_entry *mem, u32 da, u32 len)
{
 struct device *dev = &rproc->dev;
 int delta;


 if (len > mem->len) {
  dev_err(dev, "Registered carveout doesn't fit len request\n");
  return -EINVAL;
 }

 if (da != FW_RSC_ADDR_ANY && mem->da == FW_RSC_ADDR_ANY) {

  return -EINVAL;
 } else if (da != FW_RSC_ADDR_ANY && mem->da != FW_RSC_ADDR_ANY) {
  delta = da - mem->da;


  if (delta < 0) {
   dev_err(dev,
    "Registered carveout doesn't fit da request\n");
   return -EINVAL;
  }

  if (delta + len > mem->len) {
   dev_err(dev,
    "Registered carveout doesn't fit len request\n");
   return -EINVAL;
  }
 }

 return 0;
}
