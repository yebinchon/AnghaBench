
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nbu2ss_udc {TYPE_2__* p_regs; int dev; } ;
struct TYPE_3__ {int length; int actual; scalar_t__ buf; } ;
struct nbu2ss_req {int zero; TYPE_1__ req; } ;
struct TYPE_4__ {int EP0_CONTROL; int EP0_LENGTH; } ;


 int EOVERFLOW ;
 int EP0_LDATA ;
 int EP0_ONAK ;
 int EP0_PACKETSIZE ;
 int EP0_receive_NULL (struct nbu2ss_udc*,int) ;
 int _nbu2ss_bitclr (int *,int) ;
 int _nbu2ss_readl (int *) ;
 int dev_err (int ,char*) ;
 int ep0_out_overbytes (struct nbu2ss_udc*,int *,int ) ;
 int ep0_out_pio (struct nbu2ss_udc*,int *,int ) ;
 int min (int,int) ;

__attribute__((used)) static int _nbu2ss_ep0_out_transfer(struct nbu2ss_udc *udc,
        struct nbu2ss_req *req)
{
 u8 *p_buffer;
 u32 i_remain_size;
 u32 i_recv_length;
 int result = 0;
 int f_rcv_zero;



 i_recv_length = _nbu2ss_readl(&udc->p_regs->EP0_LENGTH) & EP0_LDATA;
 if (i_recv_length != 0) {
  f_rcv_zero = 0;

  i_remain_size = req->req.length - req->req.actual;
  p_buffer = (u8 *)req->req.buf;
  p_buffer += req->req.actual;

  result = ep0_out_pio(udc, p_buffer
     , min(i_remain_size, i_recv_length));
  if (result < 0)
   return result;

  req->req.actual += result;
  i_recv_length -= result;

  if ((i_recv_length > 0) && (i_recv_length < sizeof(u32))) {
   p_buffer += result;
   i_remain_size -= result;

   result = ep0_out_overbytes(udc, p_buffer
     , min(i_remain_size, i_recv_length));
   req->req.actual += result;
  }
 } else {
  f_rcv_zero = 1;
 }



 if (req->req.actual == req->req.length) {
  if ((req->req.actual % EP0_PACKETSIZE) == 0) {
   if (req->zero) {
    req->zero = 0;
    EP0_receive_NULL(udc, 0);
    return 1;
   }
  }

  return 0;
 }

 if ((req->req.actual % EP0_PACKETSIZE) != 0)
  return 0;

 if (req->req.actual > req->req.length) {
  dev_err(udc->dev, " *** Overrun Error\n");
  return -EOVERFLOW;
 }

 if (f_rcv_zero != 0) {
  i_remain_size = _nbu2ss_readl(&udc->p_regs->EP0_CONTROL);
  if (i_remain_size & EP0_ONAK) {


   _nbu2ss_bitclr(&udc->p_regs->EP0_CONTROL, EP0_ONAK);
  }
  result = 1;
 }

 return result;
}
