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
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ql_adapter*,int) ; 

__attribute__((used)) static int FUNC2(struct ql_adapter *qdev, u32 reg,
					u32 bit, u32 err_bit)
{
	u32 temp;
	int count = 10;

	while (count) {
		temp = FUNC1(qdev, reg);

		/* check for errors */
		if (temp & err_bit)
			return -1;
		else if (temp & bit)
			return 0;
		FUNC0(10);
		count--;
	}
	return -1;
}