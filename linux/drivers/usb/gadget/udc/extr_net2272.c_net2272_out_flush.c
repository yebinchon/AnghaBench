
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2272_ep {int dummy; } ;


 int ASSERT_OUT_NAKING (struct net2272_ep*) ;
 int BUFFER_FLUSH ;
 int DATA_OUT_TOKEN_INTERRUPT ;
 int DATA_PACKET_RECEIVED_INTERRUPT ;
 int EP_STAT0 ;
 int EP_STAT1 ;
 int net2272_ep_write (struct net2272_ep*,int ,int) ;

__attribute__((used)) static void
net2272_out_flush(struct net2272_ep *ep)
{
 ASSERT_OUT_NAKING(ep);

 net2272_ep_write(ep, EP_STAT0, (1 << DATA_OUT_TOKEN_INTERRUPT)
   | (1 << DATA_PACKET_RECEIVED_INTERRUPT));
 net2272_ep_write(ep, EP_STAT1, 1 << BUFFER_FLUSH);
}
