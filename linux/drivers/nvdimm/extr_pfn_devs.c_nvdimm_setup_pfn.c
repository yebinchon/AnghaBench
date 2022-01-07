
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int ndns; int uuid; } ;
struct dev_pagemap {int dummy; } ;


 int ENODEV ;
 int __nvdimm_setup_pfn (struct nd_pfn*,struct dev_pagemap*) ;
 int nd_pfn_init (struct nd_pfn*) ;

int nvdimm_setup_pfn(struct nd_pfn *nd_pfn, struct dev_pagemap *pgmap)
{
 int rc;

 if (!nd_pfn->uuid || !nd_pfn->ndns)
  return -ENODEV;

 rc = nd_pfn_init(nd_pfn);
 if (rc)
  return rc;


 return __nvdimm_setup_pfn(nd_pfn, pgmap);
}
