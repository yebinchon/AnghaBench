
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xen_platform_op {int dummy; } ;
typedef int efi_status_t ;
struct TYPE_2__ {int status; int misc; } ;


 int EFI_UNSUPPORTED ;
 scalar_t__ HYPERVISOR_platform_op (struct xen_platform_op*) ;
 struct xen_platform_op INIT_EFI_OP (int ) ;
 TYPE_1__ efi_data (struct xen_platform_op) ;
 int get_next_high_monotonic_count ;

__attribute__((used)) static efi_status_t xen_efi_get_next_high_mono_count(u32 *count)
{
 struct xen_platform_op op = INIT_EFI_OP(get_next_high_monotonic_count);

 if (HYPERVISOR_platform_op(&op) < 0)
  return EFI_UNSUPPORTED;

 *count = efi_data(op).misc;

 return efi_data(op).status;
}
