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
struct csio_rnode {int dummy; } ;
struct csio_lnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_rnode*) ; 
 scalar_t__ FUNC2 (struct csio_rnode*) ; 

void
FUNC3(struct csio_lnode *ln, struct csio_rnode *rn)
{
	FUNC0(FUNC2(rn) != 0);
	FUNC1(rn);
}