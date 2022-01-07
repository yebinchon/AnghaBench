
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dev; } ;
struct device {int dummy; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nd_namespace_common*) ;
 int PTR_ERR (struct nd_namespace_common*) ;
 scalar_t__ devm_nsio_enable (struct device*,int ) ;
 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 int nd_btt_probe (struct device*,struct nd_namespace_common*) ;
 int nd_dax_probe (struct device*,struct nd_namespace_common*) ;
 int nd_pfn_probe (struct device*,struct nd_namespace_common*) ;
 int nvdimm_namespace_attach_btt (struct nd_namespace_common*) ;
 struct nd_namespace_common* nvdimm_namespace_common_probe (struct device*) ;
 int pmem_attach_disk (struct device*,struct nd_namespace_common*) ;
 int to_nd_namespace_io (int *) ;

__attribute__((used)) static int nd_pmem_probe(struct device *dev)
{
 int ret;
 struct nd_namespace_common *ndns;

 ndns = nvdimm_namespace_common_probe(dev);
 if (IS_ERR(ndns))
  return PTR_ERR(ndns);

 if (devm_nsio_enable(dev, to_nd_namespace_io(&ndns->dev)))
  return -ENXIO;

 if (is_nd_btt(dev))
  return nvdimm_namespace_attach_btt(ndns);

 if (is_nd_pfn(dev))
  return pmem_attach_disk(dev, ndns);

 ret = nd_btt_probe(dev, ndns);
 if (ret == 0)
  return -ENXIO;
 ret = nd_pfn_probe(dev, ndns);
 if (ret == 0)
  return -ENXIO;
 else if (ret == -EOPNOTSUPP)
  return ret;

 ret = nd_dax_probe(dev, ndns);
 if (ret == 0)
  return -ENXIO;
 else if (ret == -EOPNOTSUPP)
  return ret;
 return pmem_attach_disk(dev, ndns);
}
