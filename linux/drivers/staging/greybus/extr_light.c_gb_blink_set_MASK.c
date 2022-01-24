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
struct led_classdev {int dummy; } ;
struct gb_lights_blink_request {void* time_off_ms; void* time_on_ms; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  light_id; } ;
struct gb_connection {struct gb_bundle* bundle; } ;
struct gb_channel {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; TYPE_1__* light; scalar_t__ releasing; } ;
struct gb_bundle {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GB_LIGHTS_TYPE_SET_BLINK ; 
 void* FUNC0 (unsigned long) ; 
 int FUNC1 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_lights_blink_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_bundle*) ; 
 struct gb_channel* FUNC4 (struct led_classdev*) ; 
 struct gb_connection* FUNC5 (struct gb_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct led_classdev *cdev, unsigned long *delay_on,
			unsigned long *delay_off)
{
	struct gb_channel *channel = FUNC4(cdev);
	struct gb_connection *connection = FUNC5(channel);
	struct gb_bundle *bundle = connection->bundle;
	struct gb_lights_blink_request req;
	bool old_active;
	int ret;

	if (channel->releasing)
		return -ESHUTDOWN;

	if (!delay_on || !delay_off)
		return -EINVAL;

	FUNC6(&channel->lock);
	ret = FUNC2(bundle);
	if (ret < 0)
		goto out_unlock;

	old_active = channel->active;

	req.light_id = channel->light->id;
	req.channel_id = channel->id;
	req.time_on_ms = FUNC0(*delay_on);
	req.time_off_ms = FUNC0(*delay_off);

	ret = FUNC1(connection, GB_LIGHTS_TYPE_SET_BLINK, &req,
				sizeof(req), NULL, 0);
	if (ret < 0)
		goto out_pm_put;

	if (*delay_on)
		channel->active = true;
	else
		channel->active = false;

	/* we need to keep module alive when turning to active state */
	if (!old_active && channel->active)
		goto out_unlock;

	/*
	 * on the other hand if going to inactive we still hold a reference and
	 * need to put it, so we could go to suspend.
	 */
	if (old_active && !channel->active)
		FUNC3(bundle);

out_pm_put:
	FUNC3(bundle);
out_unlock:
	FUNC7(&channel->lock);

	return ret;
}