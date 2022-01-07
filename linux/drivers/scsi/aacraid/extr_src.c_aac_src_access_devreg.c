
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_dev {int OIMR; int msi_enabled; } ;
struct TYPE_2__ {int OIMR; int IOAR; int IDR; } ;
 int AAC_INT_DISABLE_ALL ;
 int AAC_INT_ENABLE_TYPE1_INTX ;
 int AAC_INT_ENABLE_TYPE1_MSIX ;
 TYPE_1__ MUnit ;
 int PMC_ALL_INTERRUPT_BITS ;
 int PMC_GLOBAL_INT_BIT0 ;
 int PMC_GLOBAL_INT_BIT2 ;
 int src_readl (struct aac_dev*,int ) ;
 int src_writel (struct aac_dev*,int ,int) ;

void aac_src_access_devreg(struct aac_dev *dev, int mode)
{
 u_int32_t val;

 switch (mode) {
 case 130:
  src_writel(dev,
      MUnit.OIMR,
      dev->OIMR = (dev->msi_enabled ?
     AAC_INT_ENABLE_TYPE1_MSIX :
     AAC_INT_ENABLE_TYPE1_INTX));
  break;

 case 132:
  src_writel(dev,
      MUnit.OIMR,
      dev->OIMR = AAC_INT_DISABLE_ALL);
  break;

 case 128:

  val = src_readl(dev, MUnit.IDR);
  val |= 0x40;
  src_writel(dev, MUnit.IDR, val);
  src_readl(dev, MUnit.IDR);

  val = PMC_ALL_INTERRUPT_BITS;
  src_writel(dev, MUnit.IOAR, val);
  val = src_readl(dev, MUnit.OIMR);
  src_writel(dev,
      MUnit.OIMR,
      val & (~(PMC_GLOBAL_INT_BIT2 | PMC_GLOBAL_INT_BIT0)));
  break;

 case 131:

  val = src_readl(dev, MUnit.IDR);
  val &= ~0x40;
  src_writel(dev, MUnit.IDR, val);
  src_readl(dev, MUnit.IDR);
  break;

 case 134:

  val = src_readl(dev, MUnit.IDR);
  val |= 0x20;
  src_writel(dev, MUnit.IDR, val);
  src_readl(dev, MUnit.IDR);
  break;

 case 133:

  val = src_readl(dev, MUnit.IDR);
  val |= 0x10;
  src_writel(dev, MUnit.IDR, val);
  src_readl(dev, MUnit.IDR);
  break;

 case 129:

  val = src_readl(dev, MUnit.IDR);
  val |= 0x80;
  src_writel(dev, MUnit.IDR, val);
  src_readl(dev, MUnit.IDR);

  val = PMC_ALL_INTERRUPT_BITS;
  src_writel(dev, MUnit.IOAR, val);
  src_readl(dev, MUnit.IOAR);
  val = src_readl(dev, MUnit.OIMR);
  src_writel(dev, MUnit.OIMR,
    val & (~(PMC_GLOBAL_INT_BIT2)));
  break;

 default:
  break;
 }
}
