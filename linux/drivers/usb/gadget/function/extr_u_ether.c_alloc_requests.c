
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gether {int out_ep; int in_ep; } ;
struct eth_dev {int req_lock; int rx_reqs; int tx_reqs; } ;


 int DBG (struct eth_dev*,char*) ;
 int prealloc (int *,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_requests(struct eth_dev *dev, struct gether *link, unsigned n)
{
 int status;

 spin_lock(&dev->req_lock);
 status = prealloc(&dev->tx_reqs, link->in_ep, n);
 if (status < 0)
  goto fail;
 status = prealloc(&dev->rx_reqs, link->out_ep, n);
 if (status < 0)
  goto fail;
 goto done;
fail:
 DBG(dev, "can't alloc requests\n");
done:
 spin_unlock(&dev->req_lock);
 return status;
}
