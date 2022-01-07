
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_udc {int isp; scalar_t__ connected; } ;


 int DC_ADDRESS ;
 int DC_CDBGMOD_ACK ;
 int DC_DDBGMODIN_ACK ;
 int DC_DDBGMODOUT_ACK_NYET ;
 int DC_DEVEN ;
 int DC_IEBRST ;
 int DC_IEHS_STA ;
 int DC_IEP0SETUP ;
 int DC_IEPRXTX (int) ;
 int DC_IERESM ;
 int DC_IESUSP ;
 int DC_IEVBUS ;
 int DC_INTCONF ;
 int DC_INTENABLE ;
 int isp1760_set_pullup (int ,int) ;
 int isp1760_udc_write (struct isp1760_udc*,int ,int) ;

__attribute__((used)) static void isp1760_udc_init_hw(struct isp1760_udc *udc)
{
 isp1760_udc_write(udc, DC_INTCONF, DC_CDBGMOD_ACK | DC_DDBGMODIN_ACK |
     DC_DDBGMODOUT_ACK_NYET);

 isp1760_udc_write(udc, DC_INTENABLE, DC_IEPRXTX(7) | DC_IEPRXTX(6) |
     DC_IEPRXTX(5) | DC_IEPRXTX(4) | DC_IEPRXTX(3) |
     DC_IEPRXTX(2) | DC_IEPRXTX(1) | DC_IEPRXTX(0) |
     DC_IEP0SETUP | DC_IEVBUS | DC_IERESM | DC_IESUSP |
     DC_IEHS_STA | DC_IEBRST);

 if (udc->connected)
  isp1760_set_pullup(udc->isp, 1);

 isp1760_udc_write(udc, DC_ADDRESS, DC_DEVEN);
}
