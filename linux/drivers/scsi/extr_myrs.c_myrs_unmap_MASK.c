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
struct myrs_hba {int stat_mbox_size; int cmd_mbox_size; int /*<<< orphan*/ * first_cmd_mbox; int /*<<< orphan*/  cmd_mbox_addr; TYPE_1__* pdev; int /*<<< orphan*/ * first_stat_mbox; int /*<<< orphan*/  stat_mbox_addr; int /*<<< orphan*/ * fwstat_buf; int /*<<< orphan*/  fwstat_addr; int /*<<< orphan*/  ctlr_info; int /*<<< orphan*/  event_buf; } ;
struct myrs_fwstat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct myrs_hba *cs)
{
	FUNC1(cs->event_buf);
	FUNC1(cs->ctlr_info);
	if (cs->fwstat_buf) {
		FUNC0(&cs->pdev->dev, sizeof(struct myrs_fwstat),
				  cs->fwstat_buf, cs->fwstat_addr);
		cs->fwstat_buf = NULL;
	}
	if (cs->first_stat_mbox) {
		FUNC0(&cs->pdev->dev, cs->stat_mbox_size,
				  cs->first_stat_mbox, cs->stat_mbox_addr);
		cs->first_stat_mbox = NULL;
	}
	if (cs->first_cmd_mbox) {
		FUNC0(&cs->pdev->dev, cs->cmd_mbox_size,
				  cs->first_cmd_mbox, cs->cmd_mbox_addr);
		cs->first_cmd_mbox = NULL;
	}
}