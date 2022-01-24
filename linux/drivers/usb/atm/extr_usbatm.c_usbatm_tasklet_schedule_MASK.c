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
struct usbatm_channel {int /*<<< orphan*/  tasklet; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct usbatm_channel* channel ; 
 int /*<<< orphan*/  delay ; 
 struct usbatm_channel* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct usbatm_channel *channel = FUNC0(channel, t, delay);

	FUNC1(&channel->tasklet);
}