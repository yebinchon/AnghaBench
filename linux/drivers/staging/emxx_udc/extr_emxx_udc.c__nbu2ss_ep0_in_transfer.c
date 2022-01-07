
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_4__ {int actual; int length; scalar_t__ buf; } ;
struct nbu2ss_req {int zero; int div_len; TYPE_2__ req; } ;
struct TYPE_3__ {int EP0_CONTROL; } ;


 scalar_t__ EP0_INAK ;
 int EP0_INAK_EN ;
 int EP0_PACKETSIZE ;
 int EP0_in_PIO (struct nbu2ss_udc*,int *,int) ;
 int EP0_send_NULL (struct nbu2ss_udc*,int) ;
 int _nbu2ss_readl (int *) ;
 int _nbu2ss_writel (int *,int) ;
 scalar_t__ ep0_in_overbytes (struct nbu2ss_udc*,int *,int) ;

__attribute__((used)) static int _nbu2ss_ep0_in_transfer(struct nbu2ss_udc *udc,
       struct nbu2ss_req *req)
{
 u8 *p_buffer;
 u32 data;
 u32 i_remain_size = 0;
 int result = 0;



 if (req->req.actual == req->req.length) {
  if ((req->req.actual % EP0_PACKETSIZE) == 0) {
   if (req->zero) {
    req->zero = 0;
    EP0_send_NULL(udc, 0);
    return 1;
   }
  }

  return 0;
 }



 data = _nbu2ss_readl(&udc->p_regs->EP0_CONTROL);
 data |= EP0_INAK_EN;
 data &= ~(u32)EP0_INAK;
 _nbu2ss_writel(&udc->p_regs->EP0_CONTROL, data);

 i_remain_size = req->req.length - req->req.actual;
 p_buffer = (u8 *)req->req.buf;
 p_buffer += req->req.actual;



 result = EP0_in_PIO(udc, p_buffer, i_remain_size);

 req->div_len = result;
 i_remain_size -= result;

 if (i_remain_size == 0) {
  EP0_send_NULL(udc, 0);
  return result;
 }

 if ((i_remain_size < sizeof(u32)) && (result != EP0_PACKETSIZE)) {
  p_buffer += result;
  result += ep0_in_overbytes(udc, p_buffer, i_remain_size);
  req->div_len = result;
 }

 return result;
}
