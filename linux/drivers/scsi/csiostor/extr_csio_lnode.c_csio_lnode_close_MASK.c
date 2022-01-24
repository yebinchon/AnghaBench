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
struct csio_lnode {int /*<<< orphan*/  vnp_flowid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_INVALID_IDX ; 
 int /*<<< orphan*/  CSIO_LNE_CLOSE ; 
 scalar_t__ FUNC0 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*,char*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct csio_lnode *ln)
{
	FUNC2(ln, CSIO_LNE_CLOSE);
	if (FUNC0(ln))
		ln->vnp_flowid = CSIO_INVALID_IDX;

	FUNC1(ln, "closed ln :%p\n", ln);
}