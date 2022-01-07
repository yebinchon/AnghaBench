
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 int UDC_DEVINT_MSK ;
 int UDC_DEVIRQMSK_ADDR ;
 int UDC_EPINT_MSK_DISABLE_ALL ;
 int UDC_EPIRQMSK_ADDR ;
 int pch_udc_bit_set (struct pch_udc_dev*,int ,int ) ;
 int pch_udc_set_disconnect (struct pch_udc_dev*) ;

__attribute__((used)) static void pch_udc_exit(struct pch_udc_dev *dev)
{

 pch_udc_bit_set(dev, UDC_DEVIRQMSK_ADDR, UDC_DEVINT_MSK);

 pch_udc_bit_set(dev, UDC_EPIRQMSK_ADDR, UDC_EPINT_MSK_DISABLE_ALL);

 pch_udc_set_disconnect(dev);
}
