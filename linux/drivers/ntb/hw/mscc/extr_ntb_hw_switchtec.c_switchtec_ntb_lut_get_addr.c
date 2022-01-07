
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct switchtec_ntb {int* direct_mw_to_bar; TYPE_1__ ntb; } ;
typedef int resource_size_t ;
typedef scalar_t__ phys_addr_t ;


 int LUT_SIZE ;
 int lut_index (struct switchtec_ntb*,int) ;
 scalar_t__ pci_resource_start (int ,int) ;

__attribute__((used)) static int switchtec_ntb_lut_get_addr(struct switchtec_ntb *sndev,
          int idx, phys_addr_t *base,
          resource_size_t *size)
{
 int bar = sndev->direct_mw_to_bar[0];
 int offset;

 offset = LUT_SIZE * lut_index(sndev, idx);

 if (base)
  *base = pci_resource_start(sndev->ntb.pdev, bar) + offset;

 if (size)
  *size = LUT_SIZE;

 return 0;
}
