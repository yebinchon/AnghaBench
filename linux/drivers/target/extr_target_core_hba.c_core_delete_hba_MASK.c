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
struct se_hba {TYPE_2__* backend; int /*<<< orphan*/  hba_id; int /*<<< orphan*/  hba_node; int /*<<< orphan*/  dev_count; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* detach_hba ) (struct se_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hba_lock ; 
 int /*<<< orphan*/  FUNC1 (struct se_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct se_hba*) ; 

int
FUNC8(struct se_hba *hba)
{
	FUNC0(hba->dev_count);

	hba->backend->ops->detach_hba(hba);

	FUNC5(&hba_lock);
	FUNC2(&hba->hba_node);
	FUNC6(&hba_lock);

	FUNC4("CORE_HBA[%d] - Detached HBA from Generic Target"
			" Core\n", hba->hba_id);

	FUNC3(hba->backend->ops->owner);

	hba->backend = NULL;
	FUNC1(hba);
	return 0;
}