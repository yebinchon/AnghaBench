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
typedef  unsigned int u32 ;
struct sh_pfc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct sh_pfc*,unsigned int,unsigned int*,unsigned int*) ; 
 unsigned int FUNC2 (struct sh_pfc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct sh_pfc *pfc,
					     unsigned int pin)
{
	unsigned long flags;
	unsigned int offset;
	unsigned int size;
	u32 reg;
	u32 val;

	reg = FUNC1(pfc, pin, &offset, &size);
	if (!reg)
		return -EINVAL;

	FUNC3(&pfc->lock, flags);
	val = FUNC2(pfc, reg);
	FUNC4(&pfc->lock, flags);

	val = (val >> offset) & FUNC0(size - 1, 0);

	/* Convert the value to mA based on a full drive strength value of 24mA.
	 * We can make the full value configurable later if needed.
	 */
	return (val + 1) * (size == 2 ? 6 : 3);
}