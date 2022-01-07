
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct gasket_mappable_region {scalar_t__ start; scalar_t__ length_bytes; } ;


 void* min (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
gasket_mm_get_mapping_addrs(const struct gasket_mappable_region *region,
       ulong bar_offset, ulong requested_length,
       struct gasket_mappable_region *mappable_region,
       ulong *virt_offset)
{
 ulong range_start = region->start;
 ulong range_length = region->length_bytes;
 ulong range_end = range_start + range_length;

 *virt_offset = 0;
 if (bar_offset + requested_length < range_start) {




  return 0;
 } else if (bar_offset <= range_start) {
  mappable_region->start = range_start;
  *virt_offset = range_start - bar_offset;
  mappable_region->length_bytes =
   min(requested_length - *virt_offset, range_length);
  return 1;
 } else if (bar_offset > range_start &&
     bar_offset < range_end) {
  mappable_region->start = bar_offset;
  *virt_offset = 0;
  mappable_region->length_bytes =
   min(requested_length, range_end - bar_offset);
  return 1;
 }





 return 0;
}
