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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ buffer_pos ; 
 scalar_t__ buffer_size ; 
 scalar_t__ buffer_watershed ; 
 int /*<<< orphan*/  event_buffer ; 
 scalar_t__ oprofile_buffer_size ; 
 scalar_t__ oprofile_buffer_watershed ; 
 int /*<<< orphan*/  oprofilefs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	unsigned long flags;

	FUNC1(&oprofilefs_lock, flags);
	buffer_size = oprofile_buffer_size;
	buffer_watershed = oprofile_buffer_watershed;
	FUNC2(&oprofilefs_lock, flags);

	if (buffer_watershed >= buffer_size)
		return -EINVAL;

	buffer_pos = 0;
	event_buffer = FUNC3(FUNC0(buffer_size, sizeof(unsigned long)));
	if (!event_buffer)
		return -ENOMEM;

	return 0;
}