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
struct gb_operation {scalar_t__ type; TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_hid_input_report_request {int /*<<< orphan*/  report; } ;
struct gb_hid {int /*<<< orphan*/  hid; int /*<<< orphan*/  flags; } ;
struct gb_connection {TYPE_2__* bundle; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  payload_size; struct gb_hid_input_report_request* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_HID_STARTED ; 
 scalar_t__ GB_HID_TYPE_IRQ_EVENT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct gb_hid* FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_hid *ghid = FUNC1(connection);
	struct gb_hid_input_report_request *request = op->request->payload;

	if (op->type != GB_HID_TYPE_IRQ_EVENT) {
		FUNC0(&connection->bundle->dev,
			"unsupported unsolicited request\n");
		return -EINVAL;
	}

	if (FUNC3(GB_HID_STARTED, &ghid->flags))
		FUNC2(ghid->hid, HID_INPUT_REPORT,
				 request->report, op->request->payload_size, 1);

	return 0;
}