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
struct hid_device {struct gb_hid* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  wReportDescLength; } ;
struct gb_hid {TYPE_1__ hdesc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HID_MAX_DESCRIPTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct gb_hid*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int FUNC3 (struct hid_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hid)
{
	struct gb_hid *ghid = hid->driver_data;
	unsigned int rsize;
	char *rdesc;
	int ret;

	rsize = FUNC6(ghid->hdesc.wReportDescLength);
	if (!rsize || rsize > HID_MAX_DESCRIPTOR_SIZE) {
		FUNC0("weird size of report descriptor (%u)\n", rsize);
		return -EINVAL;
	}

	rdesc = FUNC5(rsize, GFP_KERNEL);
	if (!rdesc) {
		return -ENOMEM;
	}

	ret = FUNC1(ghid, rdesc);
	if (ret) {
		FUNC2(hid, "reading report descriptor failed\n");
		goto free_rdesc;
	}

	ret = FUNC3(hid, rdesc, rsize);
	if (ret)
		FUNC0("parsing report descriptor failed\n");

free_rdesc:
	FUNC4(rdesc);

	return ret;
}