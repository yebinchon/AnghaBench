
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net2272_ep {int dummy; } ;


 int ALT_NAK_OUT_PACKETS ;
 int EP_RSPCLR ;
 int EP_STAT0 ;
 int NAK_OUT_PACKETS ;
 int net2272_ep_read (struct net2272_ep*,int ) ;
 int net2272_ep_write (struct net2272_ep*,int ,int) ;

__attribute__((used)) static void stop_out_naking(struct net2272_ep *ep)
{
 u8 tmp = net2272_ep_read(ep, EP_STAT0);

 if ((tmp & (1 << NAK_OUT_PACKETS)) != 0)
  net2272_ep_write(ep, EP_RSPCLR, 1 << ALT_NAK_OUT_PACKETS);
}
