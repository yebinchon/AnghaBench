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
struct sound_adapter {int /*<<< orphan*/  dev_list; } ;
struct most_interface {struct sound_adapter* priv; } ;
struct channel {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 struct channel* FUNC0 (struct most_interface*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sound_adapter*) ; 

__attribute__((used)) static int FUNC6(struct most_interface *iface,
				    int channel_id)
{
	struct channel *channel;
	struct sound_adapter *adpt = iface->priv;

	channel = FUNC0(iface, channel_id);
	if (!channel) {
		FUNC4("sound_disconnect_channel(), invalid channel %d\n",
		       channel_id);
		return -EINVAL;
	}

	FUNC2(&channel->list);

	FUNC1(channel);
	if (FUNC3(&adpt->dev_list))
		FUNC5(adpt);
	return 0;
}