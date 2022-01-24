#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ length; scalar_t__ buf; } ;
struct cdns3_request {int /*<<< orphan*/  flags; TYPE_1__ request; struct cdns3_aligned_buf* aligned_buf; struct cdns3_endpoint* priv_ep; } ;
struct cdns3_endpoint {scalar_t__ dir; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  aligned_buf_list; int /*<<< orphan*/  aligned_buf_wq; int /*<<< orphan*/  sysdev; } ;
struct cdns3_aligned_buf {scalar_t__ size; int in_use; int /*<<< orphan*/  buf; int /*<<< orphan*/  list; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  REQUEST_UNALIGNED ; 
 scalar_t__ USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_aligned_buf*) ; 
 struct cdns3_aligned_buf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_freezable_wq ; 
 int /*<<< orphan*/  FUNC6 (struct cdns3_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_request*) ; 

__attribute__((used)) static int FUNC8(struct cdns3_request *priv_req)
{
	struct cdns3_endpoint *priv_ep = priv_req->priv_ep;
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	struct cdns3_aligned_buf *buf;

	/* check if buffer is aligned to 8. */
	if (!((uintptr_t)priv_req->request.buf & 0x7))
		return 0;

	buf = priv_req->aligned_buf;

	if (!buf || priv_req->request.length > buf->size) {
		buf = FUNC2(sizeof(*buf), GFP_ATOMIC);
		if (!buf)
			return -ENOMEM;

		buf->size = priv_req->request.length;

		buf->buf = FUNC0(priv_dev->sysdev,
					      buf->size,
					      &buf->dma,
					      GFP_ATOMIC);
		if (!buf->buf) {
			FUNC1(buf);
			return -ENOMEM;
		}

		if (priv_req->aligned_buf) {
			FUNC6(priv_req);
			priv_req->aligned_buf->in_use = 0;
			FUNC5(system_freezable_wq,
				   &priv_dev->aligned_buf_wq);
		}

		buf->in_use = 1;
		priv_req->aligned_buf = buf;

		FUNC3(&buf->list,
			      &priv_dev->aligned_buf_list);
	}

	if (priv_ep->dir == USB_DIR_IN) {
		FUNC4(buf->buf, priv_req->request.buf,
		       priv_req->request.length);
	}

	priv_req->flags |= REQUEST_UNALIGNED;
	FUNC7(priv_req);

	return 0;
}