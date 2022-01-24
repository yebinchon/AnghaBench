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
struct qcom_glink {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  mbox_chan; TYPE_1__* tx_pipe; } ;
struct TYPE_2__ {unsigned int length; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct qcom_glink*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_glink*,void const*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct qcom_glink *glink,
			 const void *hdr, size_t hlen,
			 const void *data, size_t dlen, bool wait)
{
	unsigned int tlen = hlen + dlen;
	unsigned long flags;
	int ret = 0;

	/* Reject packets that are too big */
	if (tlen >= glink->tx_pipe->length)
		return -EINVAL;

	FUNC4(&glink->tx_lock, flags);

	while (FUNC2(glink) < tlen) {
		if (!wait) {
			ret = -EAGAIN;
			goto out;
		}

		/* Wait without holding the tx_lock */
		FUNC5(&glink->tx_lock, flags);

		FUNC6(10000, 15000);

		FUNC4(&glink->tx_lock, flags);
	}

	FUNC3(glink, hdr, hlen, data, dlen);

	FUNC1(glink->mbox_chan, NULL);
	FUNC0(glink->mbox_chan, 0);

out:
	FUNC5(&glink->tx_lock, flags);

	return ret;
}