
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {int ipc_bit; int ipc_offset; int ipc_regmap; scalar_t__ mbox_chan; } ;
struct qcom_smd_channel {struct qcom_smd_edge* edge; } ;


 int BIT (int ) ;
 int mbox_client_txdone (scalar_t__,int ) ;
 int mbox_send_message (scalar_t__,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void qcom_smd_signal_channel(struct qcom_smd_channel *channel)
{
 struct qcom_smd_edge *edge = channel->edge;

 if (edge->mbox_chan) {





  mbox_send_message(edge->mbox_chan, ((void*)0));
  mbox_client_txdone(edge->mbox_chan, 0);
 } else {
  regmap_write(edge->ipc_regmap, edge->ipc_offset, BIT(edge->ipc_bit));
 }
}
