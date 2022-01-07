
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pnp_dev {int dummy; } ;
struct acpi_resource_vendor_typed {scalar_t__ byte_data; } ;
typedef int start ;
typedef int length ;


 int hp_ccsr_uuid ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int pnp_add_mem_resource (struct pnp_dev*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ vendor_resource_matches (struct pnp_dev*,struct acpi_resource_vendor_typed*,int *,int) ;

__attribute__((used)) static void pnpacpi_parse_allocated_vendor(struct pnp_dev *dev,
        struct acpi_resource_vendor_typed *vendor)
{
 if (vendor_resource_matches(dev, vendor, &hp_ccsr_uuid, 16)) {
  u64 start, length;

  memcpy(&start, vendor->byte_data, sizeof(start));
  memcpy(&length, vendor->byte_data + 8, sizeof(length));

  pnp_add_mem_resource(dev, start, start + length - 1, 0);
 }
}
