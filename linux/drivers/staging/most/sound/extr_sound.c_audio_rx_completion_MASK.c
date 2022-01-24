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
struct mbo {int /*<<< orphan*/  hdm_channel_id; int /*<<< orphan*/  ifp; } ;
struct channel {int /*<<< orphan*/  substream; scalar_t__ is_stream_running; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct channel*,struct mbo*) ; 
 struct channel* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mbo *mbo)
{
	struct channel *channel = FUNC1(mbo->ifp, mbo->hdm_channel_id);
	bool period_elapsed = false;

	if (!channel) {
		FUNC3("sound_rx_completion(), invalid channel %d\n",
		       mbo->hdm_channel_id);
		return -EINVAL;
	}

	if (channel->is_stream_running)
		period_elapsed = FUNC0(channel, mbo);

	FUNC2(mbo);

	if (period_elapsed)
		FUNC4(channel->substream);

	return 0;
}