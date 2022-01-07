
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct nvdimm_bus {int dummy; } ;
struct nd_region_desc {int flags; int numa_node; int target_node; int attr_groups; struct resource* res; } ;
typedef int ndr_desc ;


 int ENXIO ;
 int ND_REGION_PAGEMAP ;
 int e820_pmem_region_attribute_groups ;
 int e820_range_to_nid (int ) ;
 int memset (struct nd_region_desc*,int ,int) ;
 int nvdimm_pmem_region_create (struct nvdimm_bus*,struct nd_region_desc*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int e820_register_one(struct resource *res, void *data)
{
 struct nd_region_desc ndr_desc;
 struct nvdimm_bus *nvdimm_bus = data;

 memset(&ndr_desc, 0, sizeof(ndr_desc));
 ndr_desc.res = res;
 ndr_desc.attr_groups = e820_pmem_region_attribute_groups;
 ndr_desc.numa_node = e820_range_to_nid(res->start);
 ndr_desc.target_node = ndr_desc.numa_node;
 set_bit(ND_REGION_PAGEMAP, &ndr_desc.flags);
 if (!nvdimm_pmem_region_create(nvdimm_bus, &ndr_desc))
  return -ENXIO;
 return 0;
}
