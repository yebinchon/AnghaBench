
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int * tx_q; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __MT_EP_OUT_MAX ;
 int * devm_kcalloc (int ,int,int,int ) ;
 scalar_t__ mt7601u_alloc_tx_queue (struct mt7601u_dev*,int *) ;

__attribute__((used)) static int mt7601u_alloc_tx(struct mt7601u_dev *dev)
{
 int i;

 dev->tx_q = devm_kcalloc(dev->dev, __MT_EP_OUT_MAX,
     sizeof(*dev->tx_q), GFP_KERNEL);
 if (!dev->tx_q)
  return -ENOMEM;

 for (i = 0; i < __MT_EP_OUT_MAX; i++)
  if (mt7601u_alloc_tx_queue(dev, &dev->tx_q[i]))
   return -ENOMEM;

 return 0;
}
