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
struct qcom_glink {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  lcids; } ;
struct glink_channel {int /*<<< orphan*/  refcount; int /*<<< orphan*/  lcid; int /*<<< orphan*/  open_req; int /*<<< orphan*/  open_ack; } ;

/* Variables and functions */
 struct glink_channel* FUNC0 (struct glink_channel*) ; 
 struct glink_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ FUNC2 (struct glink_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct glink_channel* FUNC5 (struct qcom_glink*,char const*) ; 
 int /*<<< orphan*/  qcom_glink_channel_release ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_glink*,struct glink_channel*) ; 
 int FUNC7 (struct qcom_glink*,struct glink_channel*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct glink_channel *FUNC11(struct qcom_glink *glink,
						     const char *name)
{
	struct glink_channel *channel;
	int ret;
	unsigned long flags;

	channel = FUNC5(glink, name);
	if (FUNC2(channel))
		return FUNC0(channel);

	ret = FUNC7(glink, channel);
	if (ret)
		goto release_channel;

	ret = FUNC10(&channel->open_ack, 5 * HZ);
	if (!ret)
		goto err_timeout;

	ret = FUNC10(&channel->open_req, 5 * HZ);
	if (!ret)
		goto err_timeout;

	FUNC6(glink, channel);

	return channel;

err_timeout:
	/* qcom_glink_send_open_req() did register the channel in lcids*/
	FUNC8(&glink->idr_lock, flags);
	FUNC3(&glink->lcids, channel->lcid);
	FUNC9(&glink->idr_lock, flags);

release_channel:
	/* Release qcom_glink_send_open_req() reference */
	FUNC4(&channel->refcount, qcom_glink_channel_release);
	/* Release qcom_glink_alloc_channel() reference */
	FUNC4(&channel->refcount, qcom_glink_channel_release);

	return FUNC1(-ETIMEDOUT);
}