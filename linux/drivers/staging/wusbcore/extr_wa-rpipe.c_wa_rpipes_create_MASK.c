#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wahc {int /*<<< orphan*/ * rpipe_bm; int /*<<< orphan*/  rpipes; TYPE_1__* wa_descr; } ;
struct TYPE_2__ {int /*<<< orphan*/  wNumRPipes; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct wahc *wa)
{
	wa->rpipes = FUNC1(wa->wa_descr->wNumRPipes);
	wa->rpipe_bm = FUNC0(wa->rpipes, GFP_KERNEL);
	if (wa->rpipe_bm == NULL)
		return -ENOMEM;
	return 0;
}