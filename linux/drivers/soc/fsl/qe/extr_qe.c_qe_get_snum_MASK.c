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

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qe_lock ; 
 int qe_num_of_snum ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snum_state ; 
 int* snums ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(void)
{
	unsigned long flags;
	int snum = -EBUSY;
	int i;

	FUNC2(&qe_lock, flags);
	i = FUNC0(snum_state, qe_num_of_snum);
	if (i < qe_num_of_snum) {
		FUNC1(i, snum_state);
		snum = snums[i];
	}
	FUNC3(&qe_lock, flags);

	return snum;
}