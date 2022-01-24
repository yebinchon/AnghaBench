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
struct scm_request {struct aob_rq_header* request; scalar_t__ aob; } ;
struct aob_rq_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct aob_rq_header*) ; 
 struct aob_rq_header* FUNC2 (struct scm_request*) ; 

__attribute__((used)) static void FUNC3(struct scm_request *scmrq)
{
	struct aob_rq_header *aobrq = FUNC2(scmrq);

	FUNC0((unsigned long) scmrq->aob);
	FUNC1(scmrq->request);
	FUNC1(aobrq);
}