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
struct pmagbbfb_par {int dummy; } ;
struct fb_info {struct pmagbbfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT459_ADDR_HI ; 
 int /*<<< orphan*/  BT459_ADDR_LO ; 
 int /*<<< orphan*/  BT459_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct pmagbbfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct pmagbbfb_par *par = info->par;

	FUNC1();
	FUNC0(par, BT459_ADDR_LO, 0x00);
	FUNC0(par, BT459_ADDR_HI, 0x03);
	FUNC2();
	FUNC0(par, BT459_DATA, 0x00);
}