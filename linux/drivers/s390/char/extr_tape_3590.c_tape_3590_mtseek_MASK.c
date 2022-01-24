#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tape_request {scalar_t__ cpaddr; scalar_t__ cpdata; int /*<<< orphan*/  op; } ;
struct tape_device {scalar_t__ modeset_byte; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  LOCATE ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_LBL ; 
 struct tape_request* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC7(struct tape_device *device, int count)
{
	struct tape_request *request;

	FUNC0(6, "xsee id: %x\n", count);
	request = FUNC3(3, 4);
	if (FUNC1(request))
		return FUNC2(request);
	request->op = TO_LBL;
	FUNC4(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	*(__u32 *) request->cpdata = count;
	FUNC4(request->cpaddr + 1, LOCATE, 4, request->cpdata);
	FUNC5(request->cpaddr + 2, NOP, 0, NULL);
	return FUNC6(device, request);
}