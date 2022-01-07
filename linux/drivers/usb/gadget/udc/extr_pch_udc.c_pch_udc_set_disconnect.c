
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 int UDC_DEVCTL_ADDR ;
 int UDC_DEVCTL_SD ;
 int pch_udc_bit_set (struct pch_udc_dev*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_set_disconnect(struct pch_udc_dev *dev)
{
 pch_udc_bit_set(dev, UDC_DEVCTL_ADDR, UDC_DEVCTL_SD);
}
