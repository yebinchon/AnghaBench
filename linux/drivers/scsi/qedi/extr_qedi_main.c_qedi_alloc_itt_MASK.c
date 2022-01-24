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
struct qedi_itt_map {int dummy; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  itt_map; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_ISCSI_TASK_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qedi_ctx *qedi)
{
	qedi->itt_map = FUNC1(MAX_ISCSI_TASK_ENTRIES,
				sizeof(struct qedi_itt_map), GFP_KERNEL);
	if (!qedi->itt_map) {
		FUNC0(&qedi->dbg_ctx,
			 "Unable to allocate itt map array memory\n");
		return -ENOMEM;
	}
	return 0;
}