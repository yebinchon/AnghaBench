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
struct zfcp_fsf_req {int status; int /*<<< orphan*/  completion; scalar_t__ erp_action; int /*<<< orphan*/  (* handler ) (struct zfcp_fsf_req*) ;int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*) ; 

__attribute__((used)) static void FUNC11(struct zfcp_fsf_req *req)
{
	if (FUNC4(FUNC9(req))) {
		FUNC10(req);
		return;
	}

	FUNC1(&req->timer);
	FUNC7(req);
	FUNC6(req);
	req->handler(req);

	if (req->erp_action)
		FUNC5(req->erp_action, 0);

	if (FUNC2(req->status & ZFCP_STATUS_FSFREQ_CLEANUP))
		FUNC8(req);
	else
		FUNC0(&req->completion);
}