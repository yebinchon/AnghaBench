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
typedef  int /*<<< orphan*/  u8 ;
struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int /*<<< orphan*/  ib_bio_err_cnt; int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iblock_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct se_cmd *cmd)
{
	struct iblock_req *ibr = cmd->priv;
	u8 status;

	if (!FUNC2(&ibr->pending))
		return;

	if (FUNC0(&ibr->ib_bio_err_cnt))
		status = SAM_STAT_CHECK_CONDITION;
	else
		status = SAM_STAT_GOOD;

	FUNC3(cmd, status);
	FUNC1(ibr);
}