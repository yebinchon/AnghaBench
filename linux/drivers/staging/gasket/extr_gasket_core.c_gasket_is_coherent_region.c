
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct gasket_coherent_buffer_desc {scalar_t__ permissions; scalar_t__ base; scalar_t__ size; } ;
struct gasket_driver_desc {struct gasket_coherent_buffer_desc coherent_buffer_description; } ;


 scalar_t__ GASKET_NOMAP ;

__attribute__((used)) static bool
gasket_is_coherent_region(const struct gasket_driver_desc *driver_desc,
     ulong address)
{
 struct gasket_coherent_buffer_desc coh_buff_desc =
  driver_desc->coherent_buffer_description;

 if (coh_buff_desc.permissions != GASKET_NOMAP) {
  if ((address >= coh_buff_desc.base) &&
      (address < coh_buff_desc.base + coh_buff_desc.size)) {
   return 1;
  }
 }
 return 0;
}
