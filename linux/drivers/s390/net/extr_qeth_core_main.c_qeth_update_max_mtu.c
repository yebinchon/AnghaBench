
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int in_buf_size; } ;
struct qeth_card {TYPE_1__ qdio; struct net_device* dev; } ;
struct net_device {unsigned int mtu; unsigned int max_mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 unsigned int ETH_MAX_MTU ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 int PAGE_SIZE ;
 unsigned int min (unsigned int,unsigned int) ;
 int qeth_free_qdio_queues (struct qeth_card*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qeth_update_max_mtu(struct qeth_card *card, unsigned int max_mtu)
{
 struct net_device *dev = card->dev;
 unsigned int new_mtu;

 if (!max_mtu) {

  if (IS_IQD(card))
   return -EINVAL;

  max_mtu = ETH_MAX_MTU;
 }

 rtnl_lock();
 if (IS_IQD(card)) {

  new_mtu = (dev->mtu == dev->max_mtu) ? max_mtu : dev->mtu;


  card->qdio.in_buf_size = max_mtu + 2 * PAGE_SIZE;
  if (dev->max_mtu && dev->max_mtu != max_mtu)
   qeth_free_qdio_queues(card);
 } else {
  if (dev->mtu)
   new_mtu = dev->mtu;

  else if (IS_LAYER2(card))
   new_mtu = ETH_DATA_LEN;
  else
   new_mtu = ETH_DATA_LEN - 8;
 }

 dev->max_mtu = max_mtu;
 dev->mtu = min(new_mtu, max_mtu);
 rtnl_unlock();
 return 0;
}
