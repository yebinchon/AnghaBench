#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {TYPE_4__ schid; } ;
struct irb {int /*<<< orphan*/  scsw; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  devno; } ;
struct TYPE_7__ {TYPE_2__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct irb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int SCHN_STAT_CHN_CTRL_CHK ; 
 int SCHN_STAT_CHN_DATA_CHK ; 
 int SCHN_STAT_INTF_CTRL_CHK ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 struct subchannel* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ccw_device *cdev, struct irb *irb)
{
	struct subchannel *sch = FUNC7(cdev->dev.parent);
	char dbf_text[15];

	if (!FUNC5(&irb->scsw) ||
	    !(FUNC3(&irb->scsw) & (SCHN_STAT_CHN_DATA_CHK |
	      SCHN_STAT_CHN_CTRL_CHK | SCHN_STAT_INTF_CTRL_CHK)))
		return;
	FUNC1(0, "Channel-Check or Interface-Control-Check "
		      "received"
		      " ... device %04x on subchannel 0.%x.%04x, dev_stat "
		      ": %02X sch_stat : %02X\n",
		      cdev->private->dev_id.devno, sch->schid.ssid,
		      sch->schid.sch_no,
		      FUNC4(&irb->scsw), FUNC3(&irb->scsw));
	FUNC6(dbf_text, "chk%x", sch->schid.sch_no);
	FUNC2(0, dbf_text);
	FUNC0(0, irb, sizeof(struct irb));
}