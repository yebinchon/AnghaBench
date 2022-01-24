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
struct csio_lnode {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_LNE_DOWN_LINK ; 
 int CSIO_LNF_LINK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,char*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct csio_lnode *ln)
{
	FUNC3(ln, CSIO_LNE_DOWN_LINK);
	if (FUNC1(ln) && (ln->flags & CSIO_LNF_LINK_ENABLE)) {
		FUNC0(ln, 0);
		ln->flags &= ~CSIO_LNF_LINK_ENABLE;
	}
	FUNC2(ln, "stopping ln :%p\n", ln);
}