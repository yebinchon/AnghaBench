
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_pmem {int lbasize; } ;
struct nd_namespace_common {int dev; } ;


 int dev_WARN (int *,char*,int) ;
 scalar_t__ is_namespace_pmem (int *) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (int *) ;

unsigned int pmem_sector_size(struct nd_namespace_common *ndns)
{
 if (is_namespace_pmem(&ndns->dev)) {
  struct nd_namespace_pmem *nspm;

  nspm = to_nd_namespace_pmem(&ndns->dev);
  if (nspm->lbasize == 0 || nspm->lbasize == 512)
                ;
  else if (nspm->lbasize == 4096)
   return 4096;
  else
   dev_WARN(&ndns->dev, "unsupported sector size: %ld\n",
     nspm->lbasize);
 }





 return 512;
}
