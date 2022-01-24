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
typedef  scalar_t__ u8 ;
struct ctlr_info {int /*<<< orphan*/  devname; TYPE_2__* pdev; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int SenseLen; int /*<<< orphan*/  SenseInfo; } ;

/* Variables and functions */
#define  LUN_FAILED 132 
#define  POWER_OR_RESET 131 
#define  REPORT_LUNS_CHANGED 130 
#define  STATE_CHANGED 129 
 scalar_t__ UNIT_ATTENTION ; 
#define  UNIT_ATTENTION_CLEARED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ctlr_info *h,
	struct CommandList *c)
{
	u8 sense_key, asc, ascq;
	int sense_len;

	if (c->err_info->SenseLen > sizeof(c->err_info->SenseInfo))
		sense_len = sizeof(c->err_info->SenseInfo);
	else
		sense_len = c->err_info->SenseLen;

	FUNC0(c->err_info->SenseInfo, sense_len,
				&sense_key, &asc, &ascq);
	if (sense_key != UNIT_ATTENTION || asc == 0xff)
		return 0;

	switch (asc) {
	case STATE_CHANGED:
		FUNC1(&h->pdev->dev,
			"%s: a state change detected, command retried\n",
			h->devname);
		break;
	case LUN_FAILED:
		FUNC1(&h->pdev->dev,
			"%s: LUN failure detected\n", h->devname);
		break;
	case REPORT_LUNS_CHANGED:
		FUNC1(&h->pdev->dev,
			"%s: report LUN data changed\n", h->devname);
	/*
	 * Note: this REPORT_LUNS_CHANGED condition only occurs on the external
	 * target (array) devices.
	 */
		break;
	case POWER_OR_RESET:
		FUNC1(&h->pdev->dev,
			"%s: a power on or device reset detected\n",
			h->devname);
		break;
	case UNIT_ATTENTION_CLEARED:
		FUNC1(&h->pdev->dev,
			"%s: unit attention cleared by another initiator\n",
			h->devname);
		break;
	default:
		FUNC1(&h->pdev->dev,
			"%s: unknown unit attention detected\n",
			h->devname);
		break;
	}
	return 1;
}