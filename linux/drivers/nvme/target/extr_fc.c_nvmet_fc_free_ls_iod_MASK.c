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
struct nvmet_fc_tgtport {int /*<<< orphan*/  lock; int /*<<< orphan*/  ls_list; } ;
struct nvmet_fc_ls_iod {int /*<<< orphan*/  ls_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct nvmet_fc_tgtport *tgtport,
			struct nvmet_fc_ls_iod *iod)
{
	unsigned long flags;

	FUNC1(&tgtport->lock, flags);
	FUNC0(&iod->ls_list, &tgtport->ls_list);
	FUNC2(&tgtport->lock, flags);
}