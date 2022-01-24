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
struct snic_req_info {int /*<<< orphan*/  list; } ;
struct snic {int /*<<< orphan*/  spl_cmd_lock; int /*<<< orphan*/  snic_lock; scalar_t__ in_remove; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snic*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct snic *snic, struct snic_req_info *rqi)
{
	unsigned long flags;

	FUNC3(&snic->snic_lock, flags);
	if (snic->in_remove) {
		FUNC4(&snic->snic_lock, flags);
		goto end;
	}
	FUNC4(&snic->snic_lock, flags);

	FUNC3(&snic->spl_cmd_lock, flags);
	if (FUNC1(&rqi->list)) {
		FUNC4(&snic->spl_cmd_lock, flags);
		goto end;
	}
	FUNC0(&rqi->list);
	FUNC4(&snic->spl_cmd_lock, flags);
	FUNC2(snic, rqi);

end:
	return;
}