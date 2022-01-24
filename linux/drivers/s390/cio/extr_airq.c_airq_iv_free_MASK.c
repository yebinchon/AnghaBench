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
struct airq_iv {unsigned long end; int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct airq_iv *iv, unsigned long bit, unsigned long num)
{
	unsigned long i, flags;

	if (!iv->avail || num == 0)
		return;
	FUNC2(&iv->lock, flags);
	for (i = 0; i < num; i++) {
		/* Clear (possibly left over) interrupt bit */
		FUNC0(bit + i, iv->vector);
		/* Make the bit positions available again */
		FUNC1(bit + i, iv->avail);
	}
	if (bit + num >= iv->end) {
		/* Find new end of bit-field */
		while (iv->end > 0 && !FUNC4(iv->end - 1, iv->avail))
			iv->end--;
	}
	FUNC3(&iv->lock, flags);
}