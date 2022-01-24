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
struct qla_tgt_mgmt_cmd {int /*<<< orphan*/  free_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcm_qla2xxx_complete_mcmd ; 
 int /*<<< orphan*/  tcm_qla2xxx_free_wq ; 

__attribute__((used)) static void FUNC2(struct qla_tgt_mgmt_cmd *mcmd)
{
	FUNC0(&mcmd->free_work, tcm_qla2xxx_complete_mcmd);
	FUNC1(tcm_qla2xxx_free_wq, &mcmd->free_work);
}