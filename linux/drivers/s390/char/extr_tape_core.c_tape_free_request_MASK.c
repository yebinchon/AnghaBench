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
struct tape_request {struct tape_request* cpaddr; struct tape_request* cpdata; scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3 (struct tape_request * request)
{
	FUNC0(6, "Free request %p\n", request);

	if (request->device)
		FUNC2(request->device);
	FUNC1(request->cpdata);
	FUNC1(request->cpaddr);
	FUNC1(request);
}