
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_BUFOUT_MAXPKT_ADDR ;
 int pch_udc_ep_readl (struct pch_udc_ep*,int ) ;
 int pch_udc_ep_writel (struct pch_udc_ep*,int,int ) ;

__attribute__((used)) static void pch_udc_ep_set_maxpkt(struct pch_udc_ep *ep, u32 pkt_size)
{
 u32 data = pch_udc_ep_readl(ep, UDC_BUFOUT_MAXPKT_ADDR);
 data = (data & 0xffff0000) | (pkt_size & 0xffff);
 pch_udc_ep_writel(ep, data, UDC_BUFOUT_MAXPKT_ADDR);
}
