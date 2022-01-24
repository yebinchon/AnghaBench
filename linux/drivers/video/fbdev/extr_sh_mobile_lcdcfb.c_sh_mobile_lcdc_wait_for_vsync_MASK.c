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
struct sh_mobile_lcdc_chan {int /*<<< orphan*/  vsync_completion; int /*<<< orphan*/  lcdc; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long LDINTR_STATUS_MASK ; 
 unsigned long LDINTR_VEE ; 
 int /*<<< orphan*/  _LDINTR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sh_mobile_lcdc_chan *ch)
{
	unsigned long ldintr;
	int ret;

	/* Enable VSync End interrupt and be careful not to acknowledge any
	 * pending interrupt.
	 */
	ldintr = FUNC0(ch->lcdc, _LDINTR);
	ldintr |= LDINTR_VEE | LDINTR_STATUS_MASK;
	FUNC1(ch->lcdc, _LDINTR, ldintr);

	ret = FUNC3(&ch->vsync_completion,
							FUNC2(100));
	if (!ret)
		return -ETIMEDOUT;

	return 0;
}