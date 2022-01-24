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
struct csio_hw {int /*<<< orphan*/  rnode_mempool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct csio_hw* FUNC1 (struct csio_lnode*) ; 
 scalar_t__ FUNC2 (struct csio_rnode*,struct csio_lnode*) ; 
 struct csio_rnode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_rnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_rnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_rnode_alloc ; 
 int /*<<< orphan*/  n_rnode_nomem ; 

__attribute__((used)) static struct csio_rnode *
FUNC6(struct csio_lnode *ln)
{
	struct csio_hw *hw = FUNC1(ln);

	struct csio_rnode *rn = FUNC3(hw->rnode_mempool, GFP_ATOMIC);
	if (!rn)
		goto err;

	FUNC5(rn, 0, sizeof(struct csio_rnode));
	if (FUNC2(rn, ln))
		goto err_free;

	FUNC0(ln, n_rnode_alloc);

	return rn;

err_free:
	FUNC4(rn, hw->rnode_mempool);
err:
	FUNC0(ln, n_rnode_nomem);
	return NULL;
}