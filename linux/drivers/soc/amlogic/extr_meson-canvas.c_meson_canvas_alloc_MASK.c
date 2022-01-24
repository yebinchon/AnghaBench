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
typedef  int u8 ;
struct meson_canvas {int* used; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int NUM_CANVAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct meson_canvas *canvas, u8 *canvas_index)
{
	int i;
	unsigned long flags;

	FUNC1(&canvas->lock, flags);
	for (i = 0; i < NUM_CANVAS; ++i) {
		if (!canvas->used[i]) {
			canvas->used[i] = 1;
			FUNC2(&canvas->lock, flags);
			*canvas_index = i;
			return 0;
		}
	}
	FUNC2(&canvas->lock, flags);

	FUNC0(canvas->dev, "No more canvas available\n");
	return -ENODEV;
}