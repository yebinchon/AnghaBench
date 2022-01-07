
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {void* provider_data; } ;



void *nd_region_provider_data(struct nd_region *nd_region)
{
 return nd_region->provider_data;
}
