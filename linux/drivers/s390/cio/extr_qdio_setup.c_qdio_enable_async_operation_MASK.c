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
struct qdio_output_q {int use_cq; int /*<<< orphan*/  aobs; } ;
struct qaob {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC1(struct qdio_output_q *outq)
{
	outq->aobs = FUNC0(QDIO_MAX_BUFFERS_PER_Q, sizeof(struct qaob *),
			     GFP_ATOMIC);
	if (!outq->aobs) {
		outq->use_cq = 0;
		return -ENOMEM;
	}
	outq->use_cq = 1;
	return 0;
}