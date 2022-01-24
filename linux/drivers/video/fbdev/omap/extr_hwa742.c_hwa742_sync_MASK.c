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
struct TYPE_2__ {struct completion* sync; } ;
struct hwa742_request {int /*<<< orphan*/  entry; TYPE_1__ par; int /*<<< orphan*/ * complete; int /*<<< orphan*/  handler; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hwa742_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_handler ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC0(req_list);
	struct hwa742_request *req;
	struct completion comp;

	req = FUNC1();

	req->handler = sync_handler;
	req->complete = NULL;
	FUNC2(&comp);
	req->par.sync = &comp;

	FUNC3(&req->entry, &req_list);
	FUNC4(&req_list);

	FUNC5(&comp);
}