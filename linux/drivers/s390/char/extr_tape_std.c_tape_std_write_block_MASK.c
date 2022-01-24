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
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct TYPE_2__ {int /*<<< orphan*/  idal_buf; } ;
struct tape_device {TYPE_1__ char_data; int /*<<< orphan*/  modeset_byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  TO_WRI ; 
 int /*<<< orphan*/  WRITE_CMD ; 
 struct tape_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct tape_request *
FUNC6(struct tape_device *device, size_t count)
{
	struct tape_request *request;

	request = FUNC3(2, 0);
	if (FUNC2(request)) {
		FUNC1(6, "xwbl fail\n");
		return request;
	}
	request->op = TO_WRI;
	FUNC4(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	FUNC5(request->cpaddr + 1, WRITE_CMD,
			  device->char_data.idal_buf);
	FUNC0(6, "xwbl ccwg\n");
	return request;
}