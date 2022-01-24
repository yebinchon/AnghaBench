#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mxser_board {TYPE_2__* info; TYPE_1__* ports; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mxser_board*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mxser_board *brd)
{
	FUNC1(brd->ports[0].ioaddr, 8 * brd->info->nports);
	FUNC0(brd);
}