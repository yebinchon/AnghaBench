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
struct subchannel_id {int /*<<< orphan*/  cssid; int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; int /*<<< orphan*/  m; } ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct chsc_brinfo_resume_token {int dummy; } ;
struct TYPE_3__ {int length; int code; } ;
struct chsc_pnso_area {int n; TYPE_2__ response; struct chsc_brinfo_resume_token resume_token; scalar_t__ oc; int /*<<< orphan*/  cssid; int /*<<< orphan*/  sch; int /*<<< orphan*/  ssid; int /*<<< orphan*/  m; TYPE_1__ request; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct chsc_pnso_area*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chsc_pnso_area*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct subchannel_id schid,
		struct chsc_pnso_area *brinfo_area,
		struct chsc_brinfo_resume_token resume_token,
		int cnc)
{
	FUNC2(brinfo_area, 0, sizeof(*brinfo_area));
	brinfo_area->request.length = 0x0030;
	brinfo_area->request.code = 0x003d; /* network-subchannel operation */
	brinfo_area->m	   = schid.m;
	brinfo_area->ssid  = schid.ssid;
	brinfo_area->sch   = schid.sch_no;
	brinfo_area->cssid = schid.cssid;
	brinfo_area->oc    = 0; /* Store-network-bridging-information list */
	brinfo_area->resume_token = resume_token;
	brinfo_area->n	   = (cnc != 0);
	if (FUNC0(brinfo_area))
		return -EIO;
	return FUNC1(brinfo_area->response.code);
}