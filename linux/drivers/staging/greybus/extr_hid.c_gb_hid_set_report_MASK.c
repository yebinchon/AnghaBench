#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct gb_operation {TYPE_3__* connection; TYPE_1__* request; } ;
struct gb_hid_set_report_request {int /*<<< orphan*/  report; void* report_id; void* report_type; } ;
struct gb_hid {int /*<<< orphan*/  bundle; int /*<<< orphan*/  connection; } ;
struct TYPE_6__ {TYPE_2__* bundle; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct gb_hid_set_report_request* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_HID_TYPE_SET_REPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_operation* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 
 int FUNC3 (struct gb_operation*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC7(struct gb_hid *ghid, u8 report_type, u8 report_id,
			     unsigned char *buf, int len)
{
	struct gb_hid_set_report_request *request;
	struct gb_operation *operation;
	int ret, size = sizeof(*request) + len - 1;

	ret = FUNC4(ghid->bundle);
	if (ret)
		return ret;

	operation = FUNC1(ghid->connection,
					GB_HID_TYPE_SET_REPORT, size, 0,
					GFP_KERNEL);
	if (!operation) {
		FUNC5(ghid->bundle);
		return -ENOMEM;
	}

	request = operation->request->payload;
	request->report_type = report_type;
	request->report_id = report_id;
	FUNC6(request->report, buf, len);

	ret = FUNC3(operation);
	if (ret) {
		FUNC0(&operation->connection->bundle->dev,
			"failed to set report: %d\n", ret);
	} else {
		ret = len;
	}

	FUNC2(operation);
	FUNC5(ghid->bundle);

	return ret;
}