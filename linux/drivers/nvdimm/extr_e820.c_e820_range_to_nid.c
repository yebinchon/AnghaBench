
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 int NUMA_NO_NODE ;

__attribute__((used)) static int e820_range_to_nid(resource_size_t addr)
{
 return NUMA_NO_NODE;
}
