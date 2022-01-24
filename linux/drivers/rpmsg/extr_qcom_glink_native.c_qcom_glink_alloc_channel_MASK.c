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
struct qcom_glink {int dummy; } ;
struct glink_channel {int /*<<< orphan*/  refcount; int /*<<< orphan*/  riids; int /*<<< orphan*/  liids; int /*<<< orphan*/  intent_work; int /*<<< orphan*/  done_intents; int /*<<< orphan*/  intent_req_comp; int /*<<< orphan*/  open_ack; int /*<<< orphan*/  open_req; int /*<<< orphan*/  name; struct qcom_glink* glink; int /*<<< orphan*/  intent_req_lock; int /*<<< orphan*/  intent_lock; int /*<<< orphan*/  recv_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct glink_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 struct glink_channel* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_glink_rx_done_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct glink_channel *FUNC10(struct qcom_glink *glink,
						      const char *name)
{
	struct glink_channel *channel;

	channel = FUNC7(sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return FUNC0(-ENOMEM);

	/* Setup glink internal glink_channel data */
	FUNC9(&channel->recv_lock);
	FUNC9(&channel->intent_lock);
	FUNC8(&channel->intent_req_lock);

	channel->glink = glink;
	channel->name = FUNC6(name, GFP_KERNEL);

	FUNC4(&channel->open_req);
	FUNC4(&channel->open_ack);
	FUNC4(&channel->intent_req_comp);

	FUNC1(&channel->done_intents);
	FUNC2(&channel->intent_work, qcom_glink_rx_done_work);

	FUNC3(&channel->liids);
	FUNC3(&channel->riids);
	FUNC5(&channel->refcount);

	return channel;
}