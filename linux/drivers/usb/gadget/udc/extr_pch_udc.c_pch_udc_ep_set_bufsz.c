
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_BUFIN_FRAMENUM_ADDR ;
 int UDC_BUFOUT_MAXPKT_ADDR ;
 int pch_udc_ep_readl (struct pch_udc_ep*,int ) ;
 int pch_udc_ep_writel (struct pch_udc_ep*,int,int ) ;

__attribute__((used)) static void pch_udc_ep_set_bufsz(struct pch_udc_ep *ep,
       u32 buf_size, u32 ep_in)
{
 u32 data;
 if (ep_in) {
  data = pch_udc_ep_readl(ep, UDC_BUFIN_FRAMENUM_ADDR);
  data = (data & 0xffff0000) | (buf_size & 0xffff);
  pch_udc_ep_writel(ep, data, UDC_BUFIN_FRAMENUM_ADDR);
 } else {
  data = pch_udc_ep_readl(ep, UDC_BUFOUT_MAXPKT_ADDR);
  data = (buf_size << 16) | (data & 0xffff);
  pch_udc_ep_writel(ep, data, UDC_BUFOUT_MAXPKT_ADDR);
 }
}
