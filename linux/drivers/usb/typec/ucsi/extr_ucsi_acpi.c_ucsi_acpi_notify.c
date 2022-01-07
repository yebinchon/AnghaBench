
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ucsi_acpi {int ucsi; } ;
typedef int acpi_handle ;


 int ucsi_notify (int ) ;

__attribute__((used)) static void ucsi_acpi_notify(acpi_handle handle, u32 event, void *data)
{
 struct ucsi_acpi *ua = data;

 ucsi_notify(ua->ucsi);
}
