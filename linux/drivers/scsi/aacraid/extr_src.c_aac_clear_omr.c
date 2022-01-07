
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int OMR; } ;


 int AAC_INT_MODE_MSIX ;
 int INVALID_OMR ;
 int KERNEL_PANIC ;
 TYPE_1__ MUnit ;
 int src_readl (struct aac_dev*,int ) ;
 int src_writel (struct aac_dev*,int ,int) ;

__attribute__((used)) static void aac_clear_omr(struct aac_dev *dev)
{
 u32 omr_value = 0;

 omr_value = src_readl(dev, MUnit.OMR);




 if ((omr_value == INVALID_OMR) || (omr_value & KERNEL_PANIC))
  omr_value = 0;




 src_writel(dev, MUnit.OMR, omr_value & AAC_INT_MODE_MSIX);
 src_readl(dev, MUnit.OMR);
}
