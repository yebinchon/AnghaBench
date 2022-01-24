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
struct tb_xdomain {int resume; int /*<<< orphan*/  tb; int /*<<< orphan*/  dev; scalar_t__ transmit_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tb_xdomain*) ; 

__attribute__((used)) static void FUNC2(struct tb_xdomain *xd)
{
	if (!xd->resume)
		return;

	xd->resume = false;
	if (xd->transmit_path) {
		FUNC0(&xd->dev, "re-establishing DMA path\n");
		FUNC1(xd->tb, xd);
	}
}