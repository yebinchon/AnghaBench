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
struct csio_lnode {TYPE_1__* fcfinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*) ; 
 scalar_t__ csio_fdmi_enable ; 
 int /*<<< orphan*/  csio_free_fcfinfo ; 
 scalar_t__ FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct csio_lnode *ln)
{
	struct csio_lnode *pln;

	FUNC0(ln);
	if (FUNC1(ln)) {
		pln = FUNC3(ln);
		FUNC4(&pln->fcfinfo->kref, csio_free_fcfinfo);
	} else {
		FUNC4(&ln->fcfinfo->kref, csio_free_fcfinfo);
		if (csio_fdmi_enable)
			FUNC2(ln);
	}
	ln->fcfinfo = NULL;
}