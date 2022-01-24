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
struct csio_rnode {int /*<<< orphan*/  lnp; } ;
struct csio_hw {int /*<<< orphan*/  rnode_mempool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csio_hw* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_rnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_rnode_free ; 

__attribute__((used)) static void
FUNC5(struct csio_rnode *rn)
{
	struct csio_hw *hw = FUNC1(FUNC3(rn));

	FUNC2(rn);
	FUNC0(rn->lnp, n_rnode_free);
	FUNC4(rn, hw->rnode_mempool);
}