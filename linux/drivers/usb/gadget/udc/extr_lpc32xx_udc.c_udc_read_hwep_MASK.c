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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTRL_RD_EN ; 
 int PKT_LNGTH_MASK ; 
 int PKT_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpc32xx_udc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct lpc32xx_udc *udc, u32 hwep, u32 *data,
			 u32 bytes)
{
	u32 tmpv;
	int to = 1000;
	u32 tmp, hwrep = ((hwep & 0x1E) << 1) | CTRL_RD_EN;

	/* Setup read of endpoint */
	FUNC6(hwrep, FUNC0(udc->udp_baseaddr));

	/* Wait until packet is ready */
	while ((((tmpv = FUNC3(FUNC1(udc->udp_baseaddr))) &
		 PKT_RDY) == 0)	&& (to > 0))
		to--;
	if (!to)
		FUNC2(udc->dev, "No packet ready on FIFO EP read\n");

	/* Mask out count */
	tmp = tmpv & PKT_LNGTH_MASK;
	if (bytes < tmp)
		tmp = bytes;

	if ((tmp > 0) && (data != NULL))
		FUNC5(udc, (u8 *) data, tmp);

	FUNC6(((hwep & 0x1E) << 1), FUNC0(udc->udp_baseaddr));

	/* Clear the buffer */
	FUNC4(udc, hwep);

	return tmp;
}