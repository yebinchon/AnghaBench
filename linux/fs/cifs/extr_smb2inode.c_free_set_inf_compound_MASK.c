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
struct smb_rqst {scalar_t__ rq_iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smb_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rqst*) ; 

__attribute__((used)) static void
FUNC2(struct smb_rqst *rqst)
{
	if (rqst[1].rq_iov)
		FUNC1(&rqst[1]);
	if (rqst[2].rq_iov)
		FUNC0(&rqst[2]);
}