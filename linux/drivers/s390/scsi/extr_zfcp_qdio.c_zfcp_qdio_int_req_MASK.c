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
struct zfcp_qdio {int /*<<< orphan*/  req_q_wq; int /*<<< orphan*/  req_q_free; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  req_q; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_qdio*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8(struct ccw_device *cdev, unsigned int qdio_err,
			      int queue_no, int idx, int count,
			      unsigned long parm)
{
	struct zfcp_qdio *qdio = (struct zfcp_qdio *) parm;

	if (FUNC3(qdio_err)) {
		FUNC6(qdio, "qdireq1", qdio_err);
		return;
	}

	/* cleanup all SBALs being program-owned now */
	FUNC7(qdio->req_q, idx, count);

	FUNC1(&qdio->stat_lock);
	FUNC5(qdio);
	FUNC2(&qdio->stat_lock);
	FUNC0(count, &qdio->req_q_free);
	FUNC4(&qdio->req_q_wq);
}