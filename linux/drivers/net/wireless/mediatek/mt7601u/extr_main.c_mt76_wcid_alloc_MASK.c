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
struct mt7601u_dev {int /*<<< orphan*/ * wcid_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BITS_PER_LONG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mt7601u_dev *dev)
{
	int i, idx = 0;

	for (i = 0; i < FUNC0(dev->wcid_mask); i++) {
		idx = FUNC2(~dev->wcid_mask[i]);
		if (!idx)
			continue;

		idx--;
		dev->wcid_mask[i] |= FUNC1(idx);
		break;
	}

	idx = i * BITS_PER_LONG + idx;
	if (idx > 119)
		return -1;

	return idx;
}