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
struct uwb_rc_neh {int /*<<< orphan*/  context; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {int /*<<< orphan*/  ctx_bm; TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
	struct device *dev = &rc->uwb_dev.dev;
	if (neh->context == 0)
		return;
	if (FUNC3(neh->context, rc->ctx_bm) == 0) {
		FUNC2(dev, "context %u not set in bitmap\n",
			neh->context);
		FUNC0(1);
	}
	FUNC1(neh->context, rc->ctx_bm);
	neh->context = 0;
}