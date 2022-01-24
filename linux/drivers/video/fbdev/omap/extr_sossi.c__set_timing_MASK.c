#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int fck_hz; int /*<<< orphan*/  fck; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_2__ sossi ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(int div, int tw0, int tw1)
{
	u32 l;

#ifdef VERBOSE
	dev_dbg(sossi.fbdev->dev, "Using TW0 = %d, TW1 = %d, div = %d\n",
		 tw0 + 1, tw1 + 1, div);
#endif

	FUNC2(sossi.fck, sossi.fck_hz / div);
	FUNC1(sossi.fck);
	l = FUNC4(SOSSI_INIT1_REG);
	l &= ~((0x0f << 20) | (0x3f << 24));
	l |= (tw0 << 20) | (tw1 << 24);
	FUNC5(SOSSI_INIT1_REG, l);
	FUNC0(sossi.fck);
}