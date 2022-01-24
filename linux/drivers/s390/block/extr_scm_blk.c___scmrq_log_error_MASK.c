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
struct scm_request {scalar_t__ error; scalar_t__ retries; struct aob* aob; } ;
struct aob {int /*<<< orphan*/  response; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct scm_request *scmrq)
{
	struct aob *aob = scmrq->aob;

	if (scmrq->error == BLK_STS_TIMEOUT)
		FUNC0(1, "Request timeout");
	else {
		FUNC0(1, "Request error");
		FUNC1(1, &aob->response, sizeof(aob->response));
	}
	if (scmrq->retries)
		FUNC0(1, "Retry request");
	else
		FUNC2("An I/O operation to SCM failed with rc=%d\n",
		       scmrq->error);
}