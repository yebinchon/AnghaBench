#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct apr_rx_buf {int len; int /*<<< orphan*/  node; int /*<<< orphan*/  buf; } ;
struct apr {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rxwq; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APR_HDR_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,int) ; 
 struct apr* FUNC1 (int /*<<< orphan*/ *) ; 
 struct apr_rx_buf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct rpmsg_device *rpdev, void *buf,
				  int len, void *priv, u32 addr)
{
	struct apr *apr = FUNC1(&rpdev->dev);
	struct apr_rx_buf *abuf;
	unsigned long flags;

	if (len <= APR_HDR_SIZE) {
		FUNC0(apr->dev, "APR: Improper apr pkt received:%p %d\n",
			buf, len);
		return -EINVAL;
	}

	abuf = FUNC2(sizeof(*abuf) + len, GFP_ATOMIC);
	if (!abuf)
		return -ENOMEM;

	abuf->len = len;
	FUNC4(abuf->buf, buf, len);

	FUNC6(&apr->rx_lock, flags);
	FUNC3(&abuf->node, &apr->rx_list);
	FUNC7(&apr->rx_lock, flags);

	FUNC5(apr->rxwq, &apr->rx_work);

	return 0;
}