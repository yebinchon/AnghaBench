
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;


 int ebook_send_state (struct acpi_device*) ;

__attribute__((used)) static void ebook_switch_notify(struct acpi_device *device, u32 event)
{
 switch (event) {
 case 129:
 case 128:
  ebook_send_state(device);
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }
}
