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
struct mbo {int /*<<< orphan*/  buffer_length; int /*<<< orphan*/  virt_address; } ;
struct channel {int /*<<< orphan*/  substream; scalar_t__ is_stream_running; int /*<<< orphan*/  id; int /*<<< orphan*/  iface; int /*<<< orphan*/  playback_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  comp ; 
 int FUNC0 (struct channel* const,struct mbo*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbo* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct channel *const channel = data;

	while (!FUNC1()) {
		struct mbo *mbo = NULL;
		bool period_elapsed = false;

		FUNC6(
			channel->playback_waitq,
			FUNC1() ||
			(channel->is_stream_running &&
			 (mbo = FUNC3(channel->iface, channel->id,
					     &comp))));
		if (!mbo)
			continue;

		if (channel->is_stream_running)
			period_elapsed = FUNC0(channel, mbo);
		else
			FUNC2(mbo->virt_address, 0, mbo->buffer_length);

		FUNC4(mbo);
		if (period_elapsed)
			FUNC5(channel->substream);
	}

	return 0;
}