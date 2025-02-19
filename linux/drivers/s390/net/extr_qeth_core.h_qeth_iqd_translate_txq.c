
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int num_tx_queues; } ;


 scalar_t__ QETH_IQD_MCAST_TXQ ;

__attribute__((used)) static inline u16 qeth_iqd_translate_txq(struct net_device *dev, u16 txq)
{
 if (txq == QETH_IQD_MCAST_TXQ)
  return dev->num_tx_queues - 1;
 if (txq == dev->num_tx_queues - 1)
  return QETH_IQD_MCAST_TXQ;
 return txq;
}
