
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
__attribute__((used)) static inline int pdev_is_gen1(struct pci_dev *pdev)
{
 switch (pdev->device) {
 case 129:
 case 128:
 case 130:
 case 131:
 case 132:
 case 134:
 case 133:
 case 135:
 case 136:
 case 137:
 case 139:
 case 138:
 case 140:
 case 141:
 case 142:
  return 1;
 }
 return 0;
}
