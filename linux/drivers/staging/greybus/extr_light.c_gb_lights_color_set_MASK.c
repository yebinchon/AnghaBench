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
typedef  int /*<<< orphan*/  u32 ;
struct gb_lights_set_color_request {int /*<<< orphan*/  color; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  light_id; } ;
struct gb_connection {struct gb_bundle* bundle; } ;
struct gb_channel {int /*<<< orphan*/  id; TYPE_1__* light; scalar_t__ releasing; } ;
struct gb_bundle {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GB_LIGHTS_TYPE_SET_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_lights_set_color_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_bundle*) ; 
 struct gb_connection* FUNC4 (struct gb_channel*) ; 

__attribute__((used)) static int FUNC5(struct gb_channel *channel, u32 color)
{
	struct gb_connection *connection = FUNC4(channel);
	struct gb_bundle *bundle = connection->bundle;
	struct gb_lights_set_color_request req;
	int ret;

	if (channel->releasing)
		return -ESHUTDOWN;

	ret = FUNC2(bundle);
	if (ret < 0)
		return ret;

	req.light_id = channel->light->id;
	req.channel_id = channel->id;
	req.color = FUNC0(color);
	ret = FUNC1(connection, GB_LIGHTS_TYPE_SET_COLOR,
				&req, sizeof(req), NULL, 0);

	FUNC3(bundle);

	return ret;
}