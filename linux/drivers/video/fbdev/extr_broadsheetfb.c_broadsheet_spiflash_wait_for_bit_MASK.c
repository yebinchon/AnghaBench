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
typedef  int u16 ;
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct broadsheetfb_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct broadsheetfb_par *par,
						u16 reg, int bitnum, int val,
						int timeout)
{
	u16 tmp;

	do {
		tmp = FUNC0(par, reg);
		if (((tmp >> bitnum) & 1) == val)
			return 0;
		FUNC1(1);
	} while (timeout--);

	return -ETIMEDOUT;
}