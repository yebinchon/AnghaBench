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
typedef  int /*<<< orphan*/  u32 ;
struct lpc32xx_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLR_BUF ; 
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lpc32xx_udc *udc, u32 hwep)
{
	FUNC1(udc, hwep);
	FUNC0(udc, CMD_CLR_BUF);
}