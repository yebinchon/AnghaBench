
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tsi721_device {TYPE_2__* imsg_ring; TYPE_1__* pdev; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_4__ {size_t rx_slot; scalar_t__ size; void** imq_base; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int tsi_err (int *,char*,size_t) ;

__attribute__((used)) static int tsi721_add_inb_buffer(struct rio_mport *mport, int mbox, void *buf)
{
 struct tsi721_device *priv = mport->priv;
 u32 rx_slot;
 int rc = 0;

 rx_slot = priv->imsg_ring[mbox].rx_slot;
 if (priv->imsg_ring[mbox].imq_base[rx_slot]) {
  tsi_err(&priv->pdev->dev,
   "Error adding inbound buffer %d, buffer exists",
   rx_slot);
  rc = -EINVAL;
  goto out;
 }

 priv->imsg_ring[mbox].imq_base[rx_slot] = buf;

 if (++priv->imsg_ring[mbox].rx_slot == priv->imsg_ring[mbox].size)
  priv->imsg_ring[mbox].rx_slot = 0;

out:
 return rc;
}
