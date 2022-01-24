#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_request {char* buf; size_t length; struct kiocb* context; int /*<<< orphan*/  complete; } ;
struct kiocb_priv {struct kiocb_priv* to_free; struct usb_request* req; int /*<<< orphan*/  mm; scalar_t__ actual; struct ep_data* epdata; struct kiocb* iocb; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct ep_data {TYPE_1__* dev; int /*<<< orphan*/ * ep; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  ep_aio_cancel ; 
 int /*<<< orphan*/  ep_aio_complete ; 
 int /*<<< orphan*/  FUNC0 (struct ep_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ep_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 struct usb_request* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct kiocb *iocb,
		      struct kiocb_priv *priv,
		      struct ep_data *epdata,
		      char *buf,
		      size_t len)
{
	struct usb_request *req;
	ssize_t value;

	iocb->private = priv;
	priv->iocb = iocb;

	FUNC2(iocb, ep_aio_cancel);
	FUNC0(epdata);
	priv->epdata = epdata;
	priv->actual = 0;
	priv->mm = current->mm; /* mm teardown waits for iocbs in exit_aio() */

	/* each kiocb is coupled to one usb_request, but we can't
	 * allocate or submit those if the host disconnected.
	 */
	FUNC4(&epdata->dev->lock);
	value = -ENODEV;
	if (FUNC6(epdata->ep == NULL))
		goto fail;

	req = FUNC7(epdata->ep, GFP_ATOMIC);
	value = -ENOMEM;
	if (FUNC6(!req))
		goto fail;

	priv->req = req;
	req->buf = buf;
	req->length = len;
	req->complete = ep_aio_complete;
	req->context = iocb;
	value = FUNC9(epdata->ep, req, GFP_ATOMIC);
	if (FUNC6(0 != value)) {
		FUNC8(epdata->ep, req);
		goto fail;
	}
	FUNC5(&epdata->dev->lock);
	return -EIOCBQUEUED;

fail:
	FUNC5(&epdata->dev->lock);
	FUNC1(priv->to_free);
	FUNC1(priv);
	FUNC3(epdata);
	return value;
}