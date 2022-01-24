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
 int /*<<< orphan*/  FUNC0 (struct gb_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_channel*) ; 

__attribute__((used)) static void FUNC3(struct gb_channel *channel)
{
	/* The same as register, handle channels differently */
	if (!FUNC2(channel)) {
		FUNC1(channel);
		return;
	}

	if (channel->mode & GB_CHANNEL_MODE_TORCH)
		FUNC1(channel);
	else
		FUNC0(channel);
}