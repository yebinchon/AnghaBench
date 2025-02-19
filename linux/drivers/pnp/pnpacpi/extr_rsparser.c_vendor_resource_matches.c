
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pnp_dev {int dev; } ;
struct acpi_vendor_uuid {scalar_t__ subtype; int data; } ;
struct acpi_resource_vendor_typed {scalar_t__ uuid_subtype; int byte_length; scalar_t__* uuid; } ;


 int dev_err (int *,char*,int,int) ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;

__attribute__((used)) static int vendor_resource_matches(struct pnp_dev *dev,
       struct acpi_resource_vendor_typed *vendor,
       struct acpi_vendor_uuid *match,
       int expected_len)
{
 int uuid_len = sizeof(vendor->uuid);
 u8 uuid_subtype = vendor->uuid_subtype;
 u8 *uuid = vendor->uuid;
 int actual_len;


 actual_len = vendor->byte_length - uuid_len - 1;

 if (uuid_subtype == match->subtype &&
     uuid_len == sizeof(match->data) &&
     memcmp(uuid, match->data, uuid_len) == 0) {
  if (expected_len && expected_len != actual_len) {
   dev_err(&dev->dev,
    "wrong vendor descriptor size; expected %d, found %d bytes\n",
    expected_len, actual_len);
   return 0;
  }

  return 1;
 }

 return 0;
}
