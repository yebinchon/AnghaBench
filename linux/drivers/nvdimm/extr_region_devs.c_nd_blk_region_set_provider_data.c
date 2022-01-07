
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_blk_region {void* blk_provider_data; } ;



void nd_blk_region_set_provider_data(struct nd_blk_region *ndbr, void *data)
{
 ndbr->blk_provider_data = data;
}
