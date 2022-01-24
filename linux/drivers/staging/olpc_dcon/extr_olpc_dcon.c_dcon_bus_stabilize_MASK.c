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
struct dcon_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* bus_stabilize_wiggle ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCON_REG_ID ; 
 int /*<<< orphan*/  EC_DCON_POWER_MODE ; 
 int FUNC1 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* pdata ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct dcon_priv *dcon, int is_powered_down)
{
	unsigned long timeout;
	u8 pm;
	int x;

power_up:
	if (is_powered_down) {
		pm = 1;
		x = FUNC6(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
		if (x) {
			FUNC8("unable to force dcon to power up: %d!\n", x);
			return x;
		}
		FUNC10(10000, 11000);  /* we'll be conservative */
	}

	pdata->bus_stabilize_wiggle();

	for (x = -1, timeout = 50; timeout && x < 0; timeout--) {
		FUNC10(1000, 1100);
		x = FUNC2(dcon, DCON_REG_ID);
	}
	if (x < 0) {
		FUNC7("unable to stabilize dcon's smbus, reasserting power and praying.\n");
		FUNC0(FUNC5(FUNC4(0xc2)));
		pm = 0;
		FUNC6(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
		FUNC3(100);
		is_powered_down = 1;
		goto power_up;	/* argh, stupid hardware.. */
	}

	if (is_powered_down)
		return FUNC1(dcon, 0);
	return 0;
}