
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int name; } ;
struct net2272_ep {TYPE_2__ ep; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int ALT_NAK_OUT_PACKETS ;
 int EP_RSPSET ;
 int EP_STAT0 ;
 int NAK_OUT_PACKETS ;
 int dev_dbg (int ,char*,int ,char const*,int) ;
 int net2272_ep_read (struct net2272_ep*,int ) ;
 int net2272_ep_write (struct net2272_ep*,int ,int) ;

__attribute__((used)) static void assert_out_naking(struct net2272_ep *ep, const char *where)
{
 u8 tmp;


 return;


 tmp = net2272_ep_read(ep, EP_STAT0);
 if ((tmp & (1 << NAK_OUT_PACKETS)) == 0) {
  dev_dbg(ep->dev->dev, "%s %s %02x !NAK\n",
   ep->ep.name, where, tmp);
  net2272_ep_write(ep, EP_RSPSET, 1 << ALT_NAK_OUT_PACKETS);
 }
}
