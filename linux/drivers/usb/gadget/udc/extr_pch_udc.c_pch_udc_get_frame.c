
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_dev {int dummy; } ;


 int UDC_DEVSTS_ADDR ;
 int UDC_DEVSTS_TS_MASK ;
 int UDC_DEVSTS_TS_SHIFT ;
 int pch_udc_readl (struct pch_udc_dev*,int ) ;

__attribute__((used)) static inline int pch_udc_get_frame(struct pch_udc_dev *dev)
{
 u32 frame = pch_udc_readl(dev, UDC_DEVSTS_ADDR);
 return (frame & UDC_DEVSTS_TS_MASK) >> UDC_DEVSTS_TS_SHIFT;
}
