
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int * tx_q; } ;


 int __MT_EP_OUT_MAX ;
 int mt7601u_free_tx_queue (int *) ;

__attribute__((used)) static void mt7601u_free_tx(struct mt7601u_dev *dev)
{
 int i;

 if (!dev->tx_q)
  return;

 for (i = 0; i < __MT_EP_OUT_MAX; i++)
  mt7601u_free_tx_queue(&dev->tx_q[i]);
}
