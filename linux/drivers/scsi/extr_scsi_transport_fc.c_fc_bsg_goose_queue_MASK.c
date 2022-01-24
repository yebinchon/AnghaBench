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
struct request_queue {int dummy; } ;
struct fc_rport {struct request_queue* rqst_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 

__attribute__((used)) static void
FUNC1(struct fc_rport *rport)
{
	struct request_queue *q = rport->rqst_q;

	if (q)
		FUNC0(q, true);
}