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
struct airq_iv {unsigned long bits; unsigned long end; int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

unsigned long FUNC6(struct airq_iv *iv, unsigned long num)
{
	unsigned long bit, i, flags;

	if (!iv->avail || num == 0)
		return -1UL;
	FUNC3(&iv->lock, flags);
	bit = FUNC1(iv->avail, iv->bits);
	while (bit + num <= iv->bits) {
		for (i = 1; i < num; i++)
			if (!FUNC5(bit + i, iv->avail))
				break;
		if (i >= num) {
			/* Found a suitable block of irqs */
			for (i = 0; i < num; i++)
				FUNC0(bit + i, iv->avail);
			if (bit + num >= iv->end)
				iv->end = bit + num + 1;
			break;
		}
		bit = FUNC2(iv->avail, iv->bits, bit + i + 1);
	}
	if (bit + num > iv->bits)
		bit = -1UL;
	FUNC4(&iv->lock, flags);
	return bit;
}