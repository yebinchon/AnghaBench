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

/* Variables and functions */
 int /*<<< orphan*/  PS3AV_CMD_MUTE_OFF ; 
 int /*<<< orphan*/  PS3AV_CMD_MUTE_ON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(int mute)
{
	return FUNC0(mute ? PS3AV_CMD_MUTE_ON
					 : PS3AV_CMD_MUTE_OFF);
}