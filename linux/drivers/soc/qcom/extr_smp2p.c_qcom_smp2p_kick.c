
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smp2p {int ipc_bit; int ipc_offset; int ipc_regmap; scalar_t__ mbox_chan; } ;


 int BIT (int ) ;
 int mbox_client_txdone (scalar_t__,int ) ;
 int mbox_send_message (scalar_t__,int *) ;
 int regmap_write (int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void qcom_smp2p_kick(struct qcom_smp2p *smp2p)
{

 wmb();

 if (smp2p->mbox_chan) {
  mbox_send_message(smp2p->mbox_chan, ((void*)0));
  mbox_client_txdone(smp2p->mbox_chan, 0);
 } else {
  regmap_write(smp2p->ipc_regmap, smp2p->ipc_offset, BIT(smp2p->ipc_bit));
 }
}
