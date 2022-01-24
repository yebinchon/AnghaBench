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
struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tape_request*) ; 
 struct tape_request* FUNC1 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static void FUNC3(struct tape_device *device)
{
	struct tape_request *request;

	request = FUNC1(device);
	if (!FUNC0(request))
		FUNC2(device, request);
}