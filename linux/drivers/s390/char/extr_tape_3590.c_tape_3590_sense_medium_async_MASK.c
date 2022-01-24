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
struct tape_request {int /*<<< orphan*/  cpdata; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int /*<<< orphan*/  MEDIUM_SENSE ; 
 int /*<<< orphan*/  TO_MSEN ; 
 struct tape_request* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static void FUNC4(struct tape_device *device)
{
	struct tape_request *request;

	request = FUNC1(1, 128);
	if (FUNC0(request))
		return;
	request->op = TO_MSEN;
	FUNC2(request->cpaddr, MEDIUM_SENSE, 128, request->cpdata);
	FUNC3(device, request);
}