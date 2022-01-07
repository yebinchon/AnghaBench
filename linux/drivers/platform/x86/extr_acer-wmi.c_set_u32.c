
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int capability; int type; } ;




 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_MAILLED ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;


 int ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AMW0_set_u32 (int,int) ;
 int WMID_GUID2 ;
 int WMID_set_u32 (int,int) ;
 TYPE_1__* interface ;
 int wmi_has_guid (int ) ;
 int wmid_v2_set_u32 (int,int) ;

__attribute__((used)) static acpi_status set_u32(u32 value, u32 cap)
{
 acpi_status status;

 if (interface->capability & cap) {
  switch (interface->type) {
  case 131:
   return AMW0_set_u32(value, cap);
  case 130:
   if (cap == ACER_CAP_MAILLED)
    return AMW0_set_u32(value, cap);







   if (cap == ACER_CAP_WIRELESS ||
    cap == ACER_CAP_BLUETOOTH) {
    status = WMID_set_u32(value, cap);
    if (ACPI_FAILURE(status))
     return status;

    return AMW0_set_u32(value, cap);
   }

  case 129:
   return WMID_set_u32(value, cap);
  case 128:
   if (cap & (ACER_CAP_WIRELESS |
       ACER_CAP_BLUETOOTH |
       ACER_CAP_THREEG))
    return wmid_v2_set_u32(value, cap);
   else if (wmi_has_guid(WMID_GUID2))
    return WMID_set_u32(value, cap);

  default:
   return AE_BAD_PARAMETER;
  }
 }
 return AE_BAD_PARAMETER;
}
