
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct rsi_hw {TYPE_1__* host_intf_ops; } ;
struct rsi_common {int coex_mode; int tx_bus_mutex; struct rsi_hw* priv; } ;
struct TYPE_2__ {int (* write_pkt ) (struct rsi_hw*,int ,int ) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rsi_hw*,int ,int ) ;

int rsi_send_pkt_to_bus(struct rsi_common *common, struct sk_buff *skb)
{
 struct rsi_hw *adapter = common->priv;
 int status;

 if (common->coex_mode > 1)
  mutex_lock(&common->tx_bus_mutex);

 status = adapter->host_intf_ops->write_pkt(common->priv,
         skb->data, skb->len);

 if (common->coex_mode > 1)
  mutex_unlock(&common->tx_bus_mutex);

 return status;
}
