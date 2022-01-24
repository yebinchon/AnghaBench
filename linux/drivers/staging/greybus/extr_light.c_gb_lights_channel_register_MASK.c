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
struct gb_channel {int mode; } ;

/* Variables and functions */
 int GB_CHANNEL_MODE_TORCH ; 
 int FUNC0 (struct gb_channel*) ; 
 int FUNC1 (struct gb_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_channel*) ; 

__attribute__((used)) static int FUNC3(struct gb_channel *channel)
{
	/* Normal LED channel, just register in led classdev and we are done */
	if (!FUNC2(channel))
		return FUNC1(channel);

	/*
	 * Flash Type need more work, register flash classdev, indicator as
	 * flash classdev, torch will be led classdev of the flash classdev.
	 */
	if (!(channel->mode & GB_CHANNEL_MODE_TORCH))
		return FUNC0(channel);

	return 0;
}