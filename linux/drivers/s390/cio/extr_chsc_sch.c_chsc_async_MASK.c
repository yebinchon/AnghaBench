#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct TYPE_7__ {int /*<<< orphan*/  fctl; } ;
struct TYPE_8__ {TYPE_2__ cmd; } ;
struct TYPE_9__ {TYPE_3__ scsw; } ;
struct subchannel {int /*<<< orphan*/  dev; TYPE_5__ schid; int /*<<< orphan*/  lock; TYPE_4__ schib; } ;
struct chsc_request {int dummy; } ;
struct chsc_private {struct chsc_request* request; } ;
struct TYPE_6__ {int key; TYPE_5__ sid; } ;
struct chsc_async_area {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dbf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENODEV ; 
 int PAGE_DEFAULT_KEY ; 
 int /*<<< orphan*/  SCSW_FCTL_START_FUNC ; 
 int FUNC3 (struct chsc_async_area*) ; 
 struct subchannel* FUNC4 (struct subchannel*) ; 
 struct chsc_private* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct chsc_async_area *chsc_area,
		      struct chsc_request *request)
{
	int cc;
	struct chsc_private *private;
	struct subchannel *sch = NULL;
	int ret = -ENODEV;
	char dbf[10];

	chsc_area->header.key = PAGE_DEFAULT_KEY >> 4;
	while ((sch = FUNC4(sch))) {
		FUNC8(sch->lock);
		private = FUNC5(&sch->dev);
		if (private->request) {
			FUNC9(sch->lock);
			ret = -EBUSY;
			continue;
		}
		chsc_area->header.sid = sch->schid;
		FUNC0(2, "schid");
		FUNC1(2, &sch->schid, sizeof(sch->schid));
		cc = FUNC3(chsc_area);
		FUNC7(dbf, sizeof(dbf), "cc:%d", cc);
		FUNC0(2, dbf);
		switch (cc) {
		case 0:
			ret = 0;
			break;
		case 1:
			sch->schib.scsw.cmd.fctl |= SCSW_FCTL_START_FUNC;
			ret = -EINPROGRESS;
			private->request = request;
			break;
		case 2:
			ret = -EBUSY;
			break;
		default:
			ret = -ENODEV;
		}
		FUNC9(sch->lock);
		FUNC2(2, "chsc on 0.%x.%04x returned cc=%d\n",
			 sch->schid.ssid, sch->schid.sch_no, cc);
		if (ret == -EINPROGRESS)
			return -EINPROGRESS;
		FUNC6(&sch->dev);
		if (ret == 0)
			return 0;
	}
	return ret;
}