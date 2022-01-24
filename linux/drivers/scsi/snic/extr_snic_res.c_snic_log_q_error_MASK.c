#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct snic {unsigned int wq_count; int /*<<< orphan*/  shost; TYPE_2__* wq; } ;
struct TYPE_4__ {TYPE_1__* ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  error_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct snic *snic)
{
	unsigned int i;
	u32 err_status;

	for (i = 0; i < snic->wq_count; i++) {
		err_status = FUNC1(&snic->wq[i].ctrl->error_status);
		if (err_status)
			FUNC0(snic->shost,
				      "WQ[%d] error status %d\n",
				      i,
				      err_status);
	}
}