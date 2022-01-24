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
struct vrfb {int context; scalar_t__* paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  OMAP_VRFB_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  ctx_lock ; 
 int ctx_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC6(struct vrfb *vrfb)
{
	int rot;
	int ctx = vrfb->context;

	if (ctx == 0xff)
		return;

	FUNC1("release ctx %d\n", ctx);

	FUNC3(&ctx_lock);

	FUNC0(!(ctx_map & (1 << ctx)));

	FUNC2(ctx, &ctx_map);

	for (rot = 0; rot < 4; ++rot) {
		if (vrfb->paddr[rot]) {
			FUNC5(vrfb->paddr[rot], OMAP_VRFB_SIZE);
			vrfb->paddr[rot] = 0;
		}
	}

	vrfb->context = 0xff;

	FUNC4(&ctx_lock);
}