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
struct glink_core_rx_intent {int id; size_t size; int reuse; struct glink_core_rx_intent* data; } ;
struct glink_channel {int /*<<< orphan*/  intent_lock; int /*<<< orphan*/  liids; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct glink_core_rx_intent*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct glink_core_rx_intent*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct glink_core_rx_intent *
FUNC5(struct qcom_glink *glink,
			struct glink_channel *channel,
			size_t size,
			bool reuseable)
{
	struct glink_core_rx_intent *intent;
	int ret;
	unsigned long flags;

	intent = FUNC2(sizeof(*intent), GFP_KERNEL);
	if (!intent)
		return NULL;

	intent->data = FUNC2(size, GFP_KERNEL);
	if (!intent->data)
		goto free_intent;

	FUNC3(&channel->intent_lock, flags);
	ret = FUNC0(&channel->liids, intent, 1, -1, GFP_ATOMIC);
	if (ret < 0) {
		FUNC4(&channel->intent_lock, flags);
		goto free_data;
	}
	FUNC4(&channel->intent_lock, flags);

	intent->id = ret;
	intent->size = size;
	intent->reuse = reuseable;

	return intent;

free_data:
	FUNC1(intent->data);
free_intent:
	FUNC1(intent);
	return NULL;
}