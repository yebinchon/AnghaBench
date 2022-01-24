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
struct subchannel_id {int /*<<< orphan*/  ssid; int /*<<< orphan*/  sch_no; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_ssqd_area {TYPE_1__ response; int /*<<< orphan*/  ssid; int /*<<< orphan*/  last_sch; int /*<<< orphan*/  first_sch; TYPE_2__ request; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct chsc_ssqd_area*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chsc_ssqd_area*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct subchannel_id schid, struct chsc_ssqd_area *ssqd)
{
	FUNC2(ssqd, 0, sizeof(*ssqd));
	ssqd->request.length = 0x0010;
	ssqd->request.code = 0x0024;
	ssqd->first_sch = schid.sch_no;
	ssqd->last_sch = schid.sch_no;
	ssqd->ssid = schid.ssid;

	if (FUNC0(ssqd))
		return -EIO;

	return FUNC1(ssqd->response.code);
}