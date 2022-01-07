
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_fixup {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_fixup_pass { ____Placeholder_pci_fixup_pass } pci_fixup_pass ;


 struct pci_fixup* __end_pci_fixups_early ;
 struct pci_fixup* __end_pci_fixups_enable ;
 struct pci_fixup* __end_pci_fixups_final ;
 struct pci_fixup* __end_pci_fixups_header ;
 struct pci_fixup* __end_pci_fixups_resume ;
 struct pci_fixup* __end_pci_fixups_resume_early ;
 struct pci_fixup* __end_pci_fixups_suspend ;
 struct pci_fixup* __end_pci_fixups_suspend_late ;
 struct pci_fixup* __start_pci_fixups_early ;
 struct pci_fixup* __start_pci_fixups_enable ;
 struct pci_fixup* __start_pci_fixups_final ;
 struct pci_fixup* __start_pci_fixups_header ;
 struct pci_fixup* __start_pci_fixups_resume ;
 struct pci_fixup* __start_pci_fixups_resume_early ;
 struct pci_fixup* __start_pci_fixups_suspend ;
 struct pci_fixup* __start_pci_fixups_suspend_late ;
 int pci_apply_fixup_final_quirks ;
 int pci_do_fixups (struct pci_dev*,struct pci_fixup*,struct pci_fixup*) ;
void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev)
{
 struct pci_fixup *start, *end;

 switch (pass) {
 case 135:
  start = __start_pci_fixups_early;
  end = __end_pci_fixups_early;
  break;

 case 132:
  start = __start_pci_fixups_header;
  end = __end_pci_fixups_header;
  break;

 case 133:
  if (!pci_apply_fixup_final_quirks)
   return;
  start = __start_pci_fixups_final;
  end = __end_pci_fixups_final;
  break;

 case 134:
  start = __start_pci_fixups_enable;
  end = __end_pci_fixups_enable;
  break;

 case 131:
  start = __start_pci_fixups_resume;
  end = __end_pci_fixups_resume;
  break;

 case 130:
  start = __start_pci_fixups_resume_early;
  end = __end_pci_fixups_resume_early;
  break;

 case 129:
  start = __start_pci_fixups_suspend;
  end = __end_pci_fixups_suspend;
  break;

 case 128:
  start = __start_pci_fixups_suspend_late;
  end = __end_pci_fixups_suspend_late;
  break;

 default:

  return;
 }
 pci_do_fixups(dev, start, end);
}
