
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {char* buf; size_t length; struct kiocb* context; int complete; } ;
struct kiocb_priv {struct kiocb_priv* to_free; struct usb_request* req; int mm; scalar_t__ actual; struct ep_data* epdata; struct kiocb* iocb; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct ep_data {TYPE_1__* dev; int * ep; } ;
typedef int ssize_t ;
struct TYPE_4__ {int mm; } ;
struct TYPE_3__ {int lock; } ;


 int EIOCBQUEUED ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_2__* current ;
 int ep_aio_cancel ;
 int ep_aio_complete ;
 int get_ep (struct ep_data*) ;
 int kfree (struct kiocb_priv*) ;
 int kiocb_set_cancel_fn (struct kiocb*,int ) ;
 int put_ep (struct ep_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 struct usb_request* usb_ep_alloc_request (int *,int ) ;
 int usb_ep_free_request (int *,struct usb_request*) ;
 int usb_ep_queue (int *,struct usb_request*,int ) ;

__attribute__((used)) static ssize_t ep_aio(struct kiocb *iocb,
        struct kiocb_priv *priv,
        struct ep_data *epdata,
        char *buf,
        size_t len)
{
 struct usb_request *req;
 ssize_t value;

 iocb->private = priv;
 priv->iocb = iocb;

 kiocb_set_cancel_fn(iocb, ep_aio_cancel);
 get_ep(epdata);
 priv->epdata = epdata;
 priv->actual = 0;
 priv->mm = current->mm;




 spin_lock_irq(&epdata->dev->lock);
 value = -ENODEV;
 if (unlikely(epdata->ep == ((void*)0)))
  goto fail;

 req = usb_ep_alloc_request(epdata->ep, GFP_ATOMIC);
 value = -ENOMEM;
 if (unlikely(!req))
  goto fail;

 priv->req = req;
 req->buf = buf;
 req->length = len;
 req->complete = ep_aio_complete;
 req->context = iocb;
 value = usb_ep_queue(epdata->ep, req, GFP_ATOMIC);
 if (unlikely(0 != value)) {
  usb_ep_free_request(epdata->ep, req);
  goto fail;
 }
 spin_unlock_irq(&epdata->dev->lock);
 return -EIOCBQUEUED;

fail:
 spin_unlock_irq(&epdata->dev->lock);
 kfree(priv->to_free);
 kfree(priv);
 put_ep(epdata);
 return value;
}
