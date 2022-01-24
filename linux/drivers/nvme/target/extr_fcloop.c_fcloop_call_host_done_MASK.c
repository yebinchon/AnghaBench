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
struct nvmefc_fcp_req {int status; int /*<<< orphan*/  (* done ) (struct nvmefc_fcp_req*) ;struct fcloop_ini_fcpreq* private; } ;
struct fcloop_ini_fcpreq {int /*<<< orphan*/  inilock; int /*<<< orphan*/ * tfcp_req; } ;
struct fcloop_fcpreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fcloop_fcpreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmefc_fcp_req*) ; 

__attribute__((used)) static void
FUNC4(struct nvmefc_fcp_req *fcpreq,
			struct fcloop_fcpreq *tfcp_req, int status)
{
	struct fcloop_ini_fcpreq *inireq = NULL;

	if (fcpreq) {
		inireq = fcpreq->private;
		FUNC1(&inireq->inilock);
		inireq->tfcp_req = NULL;
		FUNC2(&inireq->inilock);

		fcpreq->status = status;
		fcpreq->done(fcpreq);
	}

	/* release original io reference on tgt struct */
	FUNC0(tfcp_req);
}