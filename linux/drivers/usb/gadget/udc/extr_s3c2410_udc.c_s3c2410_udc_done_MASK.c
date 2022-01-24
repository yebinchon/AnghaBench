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
struct TYPE_2__ {int status; } ;
struct s3c2410_request {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct s3c2410_ep {unsigned int halted; int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_ep *ep,
		struct s3c2410_request *req, int status)
{
	unsigned halted = ep->halted;

	FUNC1(&req->queue);

	if (FUNC0(req->req.status == -EINPROGRESS))
		req->req.status = status;
	else
		status = req->req.status;

	ep->halted = 1;
	FUNC2(&ep->ep, &req->req);
	ep->halted = halted;
}