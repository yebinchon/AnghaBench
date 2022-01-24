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
struct TYPE_2__ {int /*<<< orphan*/  wReportDescLength; } ;
struct gb_hid {int /*<<< orphan*/  bundle; TYPE_1__ hdesc; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_HID_TYPE_GET_REPORT_DESC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gb_hid *ghid, char *rdesc)
{
	int ret;

	ret = FUNC1(ghid->bundle);
	if (ret)
		return ret;

	ret = FUNC0(ghid->connection, GB_HID_TYPE_GET_REPORT_DESC,
				NULL, 0, rdesc,
				FUNC3(ghid->hdesc.wReportDescLength));

	FUNC2(ghid->bundle);

	return ret;
}