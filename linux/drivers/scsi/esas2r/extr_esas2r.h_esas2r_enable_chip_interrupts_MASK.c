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
struct esas2r_adapter {int /*<<< orphan*/  dis_ints_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_INT_ENB_MASK ; 
 int /*<<< orphan*/  MU_INT_MASK_OUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct esas2r_adapter *a)
{
	if (FUNC0(&a->dis_ints_cnt) == 0)
		FUNC1(a, MU_INT_MASK_OUT,
					    ESAS2R_INT_ENB_MASK);
}