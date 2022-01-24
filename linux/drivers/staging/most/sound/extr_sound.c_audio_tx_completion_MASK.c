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
struct most_interface {int dummy; } ;
struct channel {int /*<<< orphan*/  playback_waitq; } ;

/* Variables and functions */
 int EINVAL ; 
 struct channel* FUNC0 (struct most_interface*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct most_interface *iface, int channel_id)
{
	struct channel *channel = FUNC0(iface, channel_id);

	if (!channel) {
		FUNC1("sound_tx_completion(), invalid channel %d\n",
		       channel_id);
		return -EINVAL;
	}

	FUNC2(&channel->playback_waitq);

	return 0;
}