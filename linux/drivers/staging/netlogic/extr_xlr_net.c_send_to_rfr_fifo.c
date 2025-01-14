
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xlr_net_priv {int ndev; TYPE_1__* nd; } ;
struct nlm_fmn_msg {int msg0; scalar_t__ msg3; scalar_t__ msg2; scalar_t__ msg1; } ;
struct TYPE_2__ {int rfr_station; } ;


 int netdev_err (int ,char*) ;
 int nlm_cop2_disable_irqrestore (unsigned long) ;
 unsigned long nlm_cop2_enable_irqsave () ;
 int nlm_fmn_send (int,int ,int,struct nlm_fmn_msg*) ;
 unsigned long virt_to_bus (void*) ;

__attribute__((used)) static int send_to_rfr_fifo(struct xlr_net_priv *priv, void *addr)
{
 struct nlm_fmn_msg msg;
 int ret = 0, num_try = 0, stnid;
 unsigned long paddr, mflags;

 paddr = virt_to_bus(addr);
 msg.msg0 = (u64)paddr & 0xffffffffe0ULL;
 msg.msg1 = 0;
 msg.msg2 = 0;
 msg.msg3 = 0;
 stnid = priv->nd->rfr_station;
 do {
  mflags = nlm_cop2_enable_irqsave();
  ret = nlm_fmn_send(1, 0, stnid, &msg);
  nlm_cop2_disable_irqrestore(mflags);
  if (ret == 0)
   return 0;
 } while (++num_try < 10000);

 netdev_err(priv->ndev, "Send to RFR failed in RX path\n");
 return ret;
}
