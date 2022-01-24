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
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct broadsheetfb_par *par)
{
	int retry_count = 0;
	u16 tmp;

	/* disable arral saemipu mode */
	FUNC1(par, 0x0006, 0x0000);

	FUNC1(par, 0x0010, 0x0004);
	FUNC1(par, 0x0012, 0x5949);
	FUNC1(par, 0x0014, 0x0040);
	FUNC1(par, 0x0016, 0x0000);

	do {
		if (retry_count++ > 100)
			return -ETIMEDOUT;
		FUNC3(1);
	} while (!FUNC2(par));

	tmp = FUNC0(par, 0x0006);
	tmp &= ~0x1;
	FUNC1(par, 0x0006, tmp);

	return 0;
}