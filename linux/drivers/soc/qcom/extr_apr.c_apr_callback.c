
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmsg_device {int dev; } ;
struct apr_rx_buf {int len; int node; int buf; } ;
struct apr {int rx_work; int rxwq; int rx_lock; int rx_list; int dev; } ;


 int APR_HDR_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*,void*,int) ;
 struct apr* dev_get_drvdata (int *) ;
 struct apr_rx_buf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void*,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int apr_callback(struct rpmsg_device *rpdev, void *buf,
      int len, void *priv, u32 addr)
{
 struct apr *apr = dev_get_drvdata(&rpdev->dev);
 struct apr_rx_buf *abuf;
 unsigned long flags;

 if (len <= APR_HDR_SIZE) {
  dev_err(apr->dev, "APR: Improper apr pkt received:%p %d\n",
   buf, len);
  return -EINVAL;
 }

 abuf = kzalloc(sizeof(*abuf) + len, GFP_ATOMIC);
 if (!abuf)
  return -ENOMEM;

 abuf->len = len;
 memcpy(abuf->buf, buf, len);

 spin_lock_irqsave(&apr->rx_lock, flags);
 list_add_tail(&abuf->node, &apr->rx_list);
 spin_unlock_irqrestore(&apr->rx_lock, flags);

 queue_work(apr->rxwq, &apr->rx_work);

 return 0;
}
