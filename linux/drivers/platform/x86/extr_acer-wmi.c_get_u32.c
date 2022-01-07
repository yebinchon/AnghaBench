
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int type; } ;




 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_MAILLED ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;


 int AE_ERROR ;
 int AMW0_get_u32 (int*,int) ;
 int WMID_GUID2 ;
 int WMID_get_u32 (int*,int) ;
 TYPE_1__* interface ;
 int wmi_has_guid (int ) ;
 int wmid_v2_get_u32 (int*,int) ;

__attribute__((used)) static acpi_status get_u32(u32 *value, u32 cap)
{
 acpi_status status = AE_ERROR;

 switch (interface->type) {
 case 131:
  status = AMW0_get_u32(value, cap);
  break;
 case 130:
  if (cap == ACER_CAP_MAILLED) {
   status = AMW0_get_u32(value, cap);
   break;
  }

 case 129:
  status = WMID_get_u32(value, cap);
  break;
 case 128:
  if (cap & (ACER_CAP_WIRELESS |
      ACER_CAP_BLUETOOTH |
      ACER_CAP_THREEG))
   status = wmid_v2_get_u32(value, cap);
  else if (wmi_has_guid(WMID_GUID2))
   status = WMID_get_u32(value, cap);
  break;
 }

 return status;
}
