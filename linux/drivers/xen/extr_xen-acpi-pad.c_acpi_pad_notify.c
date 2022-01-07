
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;



 int acpi_pad_handle_notify (int ) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void acpi_pad_notify(acpi_handle handle, u32 event,
 void *data)
{
 switch (event) {
 case 128:
  acpi_pad_handle_notify(handle);
  break;
 default:
  pr_warn("Unsupported event [0x%x]\n", event);
  break;
 }
}
