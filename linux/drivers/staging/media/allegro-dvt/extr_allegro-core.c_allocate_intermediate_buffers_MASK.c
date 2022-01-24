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
struct allegro_channel {int /*<<< orphan*/  buffers_intermediate; } ;

/* Variables and functions */
 int FUNC0 (struct allegro_channel*,int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int FUNC1(struct allegro_channel *channel,
					 size_t n, size_t size)
{
	return FUNC0(channel,
					 &channel->buffers_intermediate,
					 n, size);
}