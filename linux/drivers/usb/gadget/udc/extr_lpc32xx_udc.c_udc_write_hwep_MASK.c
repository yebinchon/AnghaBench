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
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; } ;

/* Variables and functions */
 int CTRL_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_udc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct lpc32xx_udc *udc, u32 hwep, u32 *data,
			   u32 bytes)
{
	u32 hwwep = ((hwep & 0x1E) << 1) | CTRL_WR_EN;

	if ((bytes > 0) && (data == NULL))
		return;

	/* Setup write of endpoint */
	FUNC5(hwwep, FUNC0(udc->udp_baseaddr));

	FUNC5(bytes, FUNC2(udc->udp_baseaddr));

	/* Need at least 1 byte to trigger TX */
	if (bytes == 0)
		FUNC5(0, FUNC1(udc->udp_baseaddr));
	else
		FUNC3(udc, (u8 *) data, bytes);

	FUNC5(((hwep & 0x1E) << 1), FUNC0(udc->udp_baseaddr));

	FUNC4(udc, hwep);
}