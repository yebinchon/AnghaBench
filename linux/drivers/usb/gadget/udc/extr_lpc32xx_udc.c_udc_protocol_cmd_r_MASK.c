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
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USBD_CCEMPTY ; 
 int USBD_CDFULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct lpc32xx_udc *udc, u32 cmd)
{
	int to = 1000;

	/* Write a command and read data from the protocol engine */
	FUNC6((USBD_CDFULL | USBD_CCEMPTY),
		     FUNC1(udc->udp_baseaddr));

	/* Write command code */
	FUNC5(udc, cmd);

	while ((!(FUNC4(FUNC2(udc->udp_baseaddr)) & USBD_CDFULL))
	       && (to > 0))
		to--;
	if (!to)
		FUNC3(udc->dev,
			"Protocol engine didn't receive response (CDFULL)\n");

	return FUNC4(FUNC0(udc->udp_baseaddr));
}