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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_scm_info {TYPE_1__ response; int /*<<< orphan*/  reqtok; TYPE_2__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENODEV ; 
 int FUNC1 (struct chsc_scm_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct chsc_scm_info*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct chsc_scm_info *scm_area, u64 token)
{
	int ccode, ret;

	FUNC3(scm_area, 0, sizeof(*scm_area));
	scm_area->request.length = 0x0020;
	scm_area->request.code = 0x004C;
	scm_area->reqtok = token;

	ccode = FUNC1(scm_area);
	if (ccode > 0) {
		ret = (ccode == 3) ? -ENODEV : -EBUSY;
		goto out;
	}
	ret = FUNC2(scm_area->response.code);
	if (ret != 0)
		FUNC0(2, "chsc: scm info failed (rc=%04x)\n",
			      scm_area->response.code);
out:
	return ret;
}