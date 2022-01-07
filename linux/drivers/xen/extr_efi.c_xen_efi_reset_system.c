
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;
typedef int efi_char16_t ;


 int BUG () ;



 int SHUTDOWN_poweroff ;
 int SHUTDOWN_reboot ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_efi_reset_system(int reset_type, efi_status_t status,
     unsigned long data_size, efi_char16_t *data)
{
 switch (reset_type) {
 case 130:
 case 128:
  xen_reboot(SHUTDOWN_reboot);
  break;
 case 129:
  xen_reboot(SHUTDOWN_poweroff);
  break;
 default:
  BUG();
 }
}
