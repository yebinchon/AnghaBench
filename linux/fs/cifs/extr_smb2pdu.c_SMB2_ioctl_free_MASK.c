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
struct smb_rqst {int rq_nvec; TYPE_1__* rq_iov; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ smb2_padding ; 

void
FUNC2(struct smb_rqst *rqst)
{
	int i;
	if (rqst && rqst->rq_iov) {
		FUNC0(rqst->rq_iov[0].iov_base); /* request */
		for (i = 1; i < rqst->rq_nvec; i++)
			if (rqst->rq_iov[i].iov_base != smb2_padding)
				FUNC1(rqst->rq_iov[i].iov_base);
	}
}