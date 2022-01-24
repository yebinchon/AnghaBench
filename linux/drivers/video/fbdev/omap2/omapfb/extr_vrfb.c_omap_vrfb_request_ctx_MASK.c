#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct vrfb {int context; scalar_t__* paddr; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OMAP_VRFB_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ctx_lock ; 
 int ctx_map ; 
 TYPE_1__* ctxs ; 
 int /*<<< orphan*/  FUNC2 (struct vrfb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int num_ctxs ; 
 int /*<<< orphan*/  FUNC5 (struct vrfb*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*) ; 

int FUNC9(struct vrfb *vrfb)
{
	int rot;
	u32 paddr;
	u8 ctx;
	int r;

	FUNC0("request ctx\n");

	FUNC3(&ctx_lock);

	for (ctx = 0; ctx < num_ctxs; ++ctx)
		if ((ctx_map & (1 << ctx)) == 0)
			break;

	if (ctx == num_ctxs) {
		FUNC6("vrfb: no free contexts\n");
		r = -EBUSY;
		goto out;
	}

	FUNC0("found free ctx %d\n", ctx);

	FUNC8(ctx, &ctx_map);

	FUNC2(vrfb, 0, sizeof(*vrfb));

	vrfb->context = ctx;

	for (rot = 0; rot < 4; ++rot) {
		paddr = ctxs[ctx].base + FUNC1(rot);
		if (!FUNC7(paddr, OMAP_VRFB_SIZE, "vrfb")) {
			FUNC6("vrfb: failed to reserve VRFB "
					"area for ctx %d, rotation %d\n",
					ctx, rot * 90);
			FUNC5(vrfb);
			r = -ENOMEM;
			goto out;
		}

		vrfb->paddr[rot] = paddr;

		FUNC0("VRFB %d/%d: %lx\n", ctx, rot*90, vrfb->paddr[rot]);
	}

	r = 0;
out:
	FUNC4(&ctx_lock);
	return r;
}