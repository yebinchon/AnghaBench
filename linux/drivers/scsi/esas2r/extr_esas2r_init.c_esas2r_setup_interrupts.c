
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int intr_mode; int flags2; int index; int pcid; } ;


 int AF2_MSI_ENABLED ;
 int ESAS2R_LOG_WARN ;


 int esas2r_log (int ,char*,int ,...) ;
 int interrupt_mode ;
 int pci_enable_msi (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void esas2r_setup_interrupts(struct esas2r_adapter *a, int intr_mode)
{
 int i;


 switch (intr_mode) {
 case 129:
use_legacy_interrupts:
  a->intr_mode = 129;
  break;

 case 128:
  i = pci_enable_msi(a->pcid);
  if (i != 0) {
   esas2r_log(ESAS2R_LOG_WARN,
       "failed to enable MSI for adapter %d, "
       "falling back to legacy interrupts "
       "(err=%d)", a->index,
       i);
   goto use_legacy_interrupts;
  }
  a->intr_mode = 128;
  set_bit(AF2_MSI_ENABLED, &a->flags2);
  break;


 default:
  esas2r_log(ESAS2R_LOG_WARN,
      "unknown interrupt_mode %d requested, "
      "falling back to legacy interrupt",
      interrupt_mode);
  goto use_legacy_interrupts;
 }
}
