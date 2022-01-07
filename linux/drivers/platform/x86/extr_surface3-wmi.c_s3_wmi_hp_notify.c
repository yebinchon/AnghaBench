
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;


 int s3_wmi_send_lid_state () ;

__attribute__((used)) static int s3_wmi_hp_notify(struct acpi_device *adev, u32 value)
{
 return s3_wmi_send_lid_state();
}
