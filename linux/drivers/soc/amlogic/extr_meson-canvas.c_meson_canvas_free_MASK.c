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
typedef  size_t u8 ;
struct meson_canvas {int /*<<< orphan*/  lock; scalar_t__* used; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct meson_canvas *canvas, u8 canvas_index)
{
	unsigned long flags;

	FUNC1(&canvas->lock, flags);
	if (!canvas->used[canvas_index]) {
		FUNC0(canvas->dev,
			"Trying to free unused canvas %u\n", canvas_index);
		FUNC2(&canvas->lock, flags);
		return -EINVAL;
	}
	canvas->used[canvas_index] = 0;
	FUNC2(&canvas->lock, flags);

	return 0;
}