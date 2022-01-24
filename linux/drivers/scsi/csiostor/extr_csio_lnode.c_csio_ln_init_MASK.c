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
struct csio_lnode {TYPE_1__* fcfinfo; int /*<<< orphan*/  fcf_lsthead; void* fcf_flowid; void* vnp_flowid; int /*<<< orphan*/  sm; } ;
struct csio_hw {int dummy; } ;
struct csio_fcf_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 void* CSIO_INVALID_IDX ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ csio_fdmi_enable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct csio_lnode*) ; 
 scalar_t__ FUNC4 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_lnode*,char*) ; 
 scalar_t__ FUNC6 (struct csio_lnode*) ; 
 struct csio_hw* FUNC7 (struct csio_lnode*) ; 
 int /*<<< orphan*/  csio_lns_uninit ; 
 struct csio_lnode* FUNC8 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC9 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC13(struct csio_lnode *ln)
{
	int rv = -EINVAL;
	struct csio_lnode *rln, *pln;
	struct csio_hw *hw = FUNC7(ln);

	FUNC2(&ln->sm, csio_lns_uninit);
	ln->vnp_flowid = CSIO_INVALID_IDX;
	ln->fcf_flowid = CSIO_INVALID_IDX;

	if (FUNC4(ln)) {

		/* This is the lnode used during initialization */

		ln->fcfinfo = FUNC12(sizeof(struct csio_fcf_info), GFP_KERNEL);
		if (!ln->fcfinfo) {
			FUNC5(ln, "Failed to alloc FCF record\n");
			FUNC0(hw, n_err_nomem);
			goto err;
		}

		FUNC1(&ln->fcf_lsthead);
		FUNC11(&ln->fcfinfo->kref);

		if (csio_fdmi_enable && FUNC6(ln))
			goto err;

	} else { /* Either a non-root physical or a virtual lnode */

		/*
		 * THe rest is common for non-root physical and NPIV lnodes.
		 * Just get references to all other modules
		 */
		rln = FUNC9(ln);

		if (FUNC3(ln)) {
			/* NPIV */
			pln = FUNC8(ln);
			FUNC10(&pln->fcfinfo->kref);
			ln->fcfinfo = pln->fcfinfo;
		} else {
			/* Another non-root physical lnode (FCF) */
			ln->fcfinfo = FUNC12(sizeof(struct csio_fcf_info),
								GFP_KERNEL);
			if (!ln->fcfinfo) {
				FUNC5(ln, "Failed to alloc FCF info\n");
				FUNC0(hw, n_err_nomem);
				goto err;
			}

			FUNC11(&ln->fcfinfo->kref);

			if (csio_fdmi_enable && FUNC6(ln))
				goto err;
		}

	} /* if (!csio_is_root_ln(ln)) */

	return 0;
err:
	return rv;
}