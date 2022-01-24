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
struct snic_disc {int /*<<< orphan*/  mutex; scalar_t__ req_cnt; } ;
struct snic {int /*<<< orphan*/  shost; struct snic_disc disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct snic *snic)
{
	struct snic_disc *disc = &snic->disc;

	FUNC1(&disc->mutex);
	if (disc->req_cnt) {
		disc->req_cnt = 0;
		FUNC0(snic->shost, "Terminating Discovery.\n");
	}
	FUNC2(&disc->mutex);
}