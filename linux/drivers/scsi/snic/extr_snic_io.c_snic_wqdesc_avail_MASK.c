#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  actv_reqs; } ;
struct TYPE_6__ {TYPE_2__ fw; } ;
struct TYPE_4__ {int wq_enet_desc_count; } ;
struct snic {TYPE_3__ s_stats; int /*<<< orphan*/  shost; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int SNIC_REQ_HBA_RESET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct snic *snic, int q_num, int req_type)
{
	int nr_wqdesc = snic->config.wq_enet_desc_count;

	if (q_num > 0) {
		/*
		 * Multi Queue case, additional care is required.
		 * Per WQ active requests need to be maintained.
		 */
		FUNC1(snic->shost, "desc_avail: Multi Queue case.\n");
		FUNC0(q_num > 0);

		return -1;
	}

	nr_wqdesc -= FUNC2(&snic->s_stats.fw.actv_reqs);

	return ((req_type == SNIC_REQ_HBA_RESET) ? nr_wqdesc : nr_wqdesc - 1);
}