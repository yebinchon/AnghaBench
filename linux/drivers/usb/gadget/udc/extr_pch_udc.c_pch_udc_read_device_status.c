
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_dev {int dummy; } ;


 int UDC_DEVSTS_ADDR ;
 int pch_udc_readl (struct pch_udc_dev*,int ) ;

__attribute__((used)) static inline u32 pch_udc_read_device_status(struct pch_udc_dev *dev)
{
 return pch_udc_readl(dev, UDC_DEVSTS_ADDR);
}
