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
typedef  int u32 ;
struct esas2r_adapter {int int_mask; int int_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MU_INT_STATUS_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int FUNC1 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct esas2r_adapter *a)
{
	u32 intstat;

	if (a->int_mask == 0)
		return false;

	intstat = FUNC1(a, MU_INT_STATUS_OUT);

	if ((intstat & a->int_mask) == 0)
		return false;

	FUNC0(a);

	a->int_stat = intstat;
	a->int_mask = 0;

	return true;
}