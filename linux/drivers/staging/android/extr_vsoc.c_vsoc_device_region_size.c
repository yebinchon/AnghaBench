
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vsoc_device_region {scalar_t__ region_begin_offset; scalar_t__ region_end_offset; } ;



__attribute__((used)) static inline uint32_t vsoc_device_region_size(struct vsoc_device_region *r)
{
 return r->region_end_offset - r->region_begin_offset;
}
