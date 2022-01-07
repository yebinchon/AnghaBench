
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {int name; } ;


 int SSB_GIGE_MEM_RES_NAME ;
 scalar_t__ strcmp (int ,int ) ;

bool pdev_is_ssb_gige_core(struct pci_dev *pdev)
{
 if (!pdev->resource[0].name)
  return 0;
 return (strcmp(pdev->resource[0].name, SSB_GIGE_MEM_RES_NAME) == 0);
}
