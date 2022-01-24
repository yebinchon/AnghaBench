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
struct snic {int /*<<< orphan*/  spl_cmd_lock; int /*<<< orphan*/  spl_cmd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct snic *snic, struct snic_req_info *rqi)
{
	unsigned long flags;

	FUNC0(&rqi->list);

	FUNC2(&snic->spl_cmd_lock, flags);
	FUNC1(&rqi->list, &snic->spl_cmd_list);
	FUNC3(&snic->spl_cmd_lock, flags);
}