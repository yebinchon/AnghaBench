
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;


 int DMATFNR_ACC_CXF ;
 int DMATFNR_DISDMA ;
 scalar_t__ FOTG210_CXPORT ;
 scalar_t__ FOTG210_DMATFNR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fotg210_rdsetupp(struct fotg210_udc *fotg210,
     u8 *buffer)
{
 int i = 0;
 u8 *tmp = buffer;
 u32 data;
 u32 length = 8;

 iowrite32(DMATFNR_ACC_CXF, fotg210->reg + FOTG210_DMATFNR);

 for (i = (length >> 2); i > 0; i--) {
  data = ioread32(fotg210->reg + FOTG210_CXPORT);
  *tmp = data & 0xFF;
  *(tmp + 1) = (data >> 8) & 0xFF;
  *(tmp + 2) = (data >> 16) & 0xFF;
  *(tmp + 3) = (data >> 24) & 0xFF;
  tmp = tmp + 4;
 }

 switch (length % 4) {
 case 1:
  data = ioread32(fotg210->reg + FOTG210_CXPORT);
  *tmp = data & 0xFF;
  break;
 case 2:
  data = ioread32(fotg210->reg + FOTG210_CXPORT);
  *tmp = data & 0xFF;
  *(tmp + 1) = (data >> 8) & 0xFF;
  break;
 case 3:
  data = ioread32(fotg210->reg + FOTG210_CXPORT);
  *tmp = data & 0xFF;
  *(tmp + 1) = (data >> 8) & 0xFF;
  *(tmp + 2) = (data >> 16) & 0xFF;
  break;
 default:
  break;
 }

 iowrite32(DMATFNR_DISDMA, fotg210->reg + FOTG210_DMATFNR);
}
