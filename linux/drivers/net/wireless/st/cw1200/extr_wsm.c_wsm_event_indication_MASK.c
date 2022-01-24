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
struct wsm_buf {int dummy; } ;
struct TYPE_2__ {void* data; void* id; } ;
struct cw1200_wsm_event {int /*<<< orphan*/  link; TYPE_1__ evt; } ;
struct cw1200_common {scalar_t__ mode; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  event_queue_lock; int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 void* FUNC0 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_wsm_event*) ; 
 struct cw1200_wsm_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cw1200_common *priv, struct wsm_buf *buf)
{
	int first;
	struct cw1200_wsm_event *event;

	if (priv->mode == NL80211_IFTYPE_UNSPECIFIED) {
		/* STA is stopped. */
		return 0;
	}

	event = FUNC2(sizeof(struct cw1200_wsm_event), GFP_KERNEL);
	if (!event)
		return -ENOMEM;

	event->evt.id = FUNC0(buf);
	event->evt.data = FUNC0(buf);

	FUNC5("[WSM] Event: %d(%d)\n",
		 event->evt.id, event->evt.data);

	FUNC7(&priv->event_queue_lock);
	first = FUNC4(&priv->event_queue);
	FUNC3(&event->link, &priv->event_queue);
	FUNC8(&priv->event_queue_lock);

	if (first)
		FUNC6(priv->workqueue, &priv->event_handler);

	return 0;

underflow:
	FUNC1(event);
	return -EINVAL;
}