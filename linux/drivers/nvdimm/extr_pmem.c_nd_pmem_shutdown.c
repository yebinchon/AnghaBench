
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int nvdimm_flush (int ,int *) ;
 int to_nd_region (int ) ;

__attribute__((used)) static void nd_pmem_shutdown(struct device *dev)
{
 nvdimm_flush(to_nd_region(dev->parent), ((void*)0));
}
