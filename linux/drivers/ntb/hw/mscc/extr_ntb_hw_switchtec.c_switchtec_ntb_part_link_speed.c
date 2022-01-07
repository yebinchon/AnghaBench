
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct switchtec_ntb {struct switchtec_dev* stdev; } ;
struct switchtec_dev {TYPE_2__* mmio_pff_csr; TYPE_1__* mmio_part_cfg; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_4__ {int * pci_cap_region; } ;
struct TYPE_3__ {int vep_pff_inst_id; } ;


 size_t ioread32 (int *) ;

__attribute__((used)) static void switchtec_ntb_part_link_speed(struct switchtec_ntb *sndev,
       int partition,
       enum ntb_speed *speed,
       enum ntb_width *width)
{
 struct switchtec_dev *stdev = sndev->stdev;

 u32 pff = ioread32(&stdev->mmio_part_cfg[partition].vep_pff_inst_id);
 u32 linksta = ioread32(&stdev->mmio_pff_csr[pff].pci_cap_region[13]);

 if (speed)
  *speed = (linksta >> 16) & 0xF;

 if (width)
  *width = (linksta >> 20) & 0x3F;
}
