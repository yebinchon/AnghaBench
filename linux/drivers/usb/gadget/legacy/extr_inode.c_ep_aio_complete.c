
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {scalar_t__ actual; scalar_t__ status; struct kiocb_priv* buf; struct kiocb* context; } ;
struct usb_ep {int name; } ;
struct kiocb_priv {scalar_t__ actual; int work; struct kiocb_priv* buf; struct kiocb_priv* to_free; struct ep_data* epdata; int * req; } ;
struct kiocb {int (* ki_complete ) (struct kiocb*,scalar_t__,scalar_t__) ;struct kiocb_priv* private; } ;
struct ep_data {TYPE_1__* dev; } ;
struct TYPE_2__ {int lock; } ;


 int DBG (TYPE_1__*,char*,int ,scalar_t__,scalar_t__) ;
 int INIT_WORK (int *,int ) ;
 int ep_user_copy_worker ;
 int kfree (struct kiocb_priv*) ;
 int put_ep (struct ep_data*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct kiocb*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

__attribute__((used)) static void ep_aio_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct kiocb *iocb = req->context;
 struct kiocb_priv *priv = iocb->private;
 struct ep_data *epdata = priv->epdata;


 spin_lock(&epdata->dev->lock);
 priv->req = ((void*)0);
 priv->epdata = ((void*)0);





 if (priv->to_free == ((void*)0) || unlikely(req->actual == 0)) {
  kfree(req->buf);
  kfree(priv->to_free);
  kfree(priv);
  iocb->private = ((void*)0);


  iocb->ki_complete(iocb, req->actual ? req->actual : req->status,
    req->status);
 } else {

  if (unlikely(0 != req->status))
   DBG(epdata->dev, "%s fault %d len %d\n",
    ep->name, req->status, req->actual);

  priv->buf = req->buf;
  priv->actual = req->actual;
  INIT_WORK(&priv->work, ep_user_copy_worker);
  schedule_work(&priv->work);
 }

 usb_ep_free_request(ep, req);
 spin_unlock(&epdata->dev->lock);
 put_ep(epdata);
}
