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
struct dlfb_data {int /*<<< orphan*/  damage_work; int /*<<< orphan*/  damage_lock; void* damage_y2; void* damage_y; void* damage_x2; void* damage_x; } ;

/* Variables and functions */
 void* FUNC0 (int,void*) ; 
 void* FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dlfb_data *dlfb, int x, int y, int width, int height)
{
	unsigned long flags;
	int x2 = x + width;
	int y2 = y + height;

	if (x >= x2 || y >= y2)
		return;

	FUNC3(&dlfb->damage_lock, flags);
	dlfb->damage_x = FUNC1(x, dlfb->damage_x);
	dlfb->damage_x2 = FUNC0(x2, dlfb->damage_x2);
	dlfb->damage_y = FUNC1(y, dlfb->damage_y);
	dlfb->damage_y2 = FUNC0(y2, dlfb->damage_y2);
	FUNC4(&dlfb->damage_lock, flags);

	FUNC2(&dlfb->damage_work);
}