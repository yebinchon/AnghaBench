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
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; } ;

/* Variables and functions */
 int USBD_CCEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct lpc32xx_udc *udc, u32 cmd)
{
	u32 pass = 0;
	int to;

	/* EP may lock on CLRI if this read isn't done */
	u32 tmp = FUNC4(FUNC2(udc->udp_baseaddr));
	(void) tmp;

	while (pass == 0) {
		FUNC5(USBD_CCEMPTY, FUNC1(udc->udp_baseaddr));

		/* Write command code */
		FUNC5(cmd, FUNC0(udc->udp_baseaddr));
		to = 10000;
		while (((FUNC4(FUNC2(udc->udp_baseaddr)) &
			 USBD_CCEMPTY) == 0) && (to > 0)) {
			to--;
		}

		if (to > 0)
			pass = 1;

		FUNC3();
	}
}