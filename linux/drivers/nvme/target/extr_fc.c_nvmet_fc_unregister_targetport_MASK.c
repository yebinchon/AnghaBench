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
struct nvmet_fc_tgtport {int dummy; } ;
struct nvmet_fc_target_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_fc_tgtport*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgtport*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_fc_tgtport*) ; 
 struct nvmet_fc_tgtport* FUNC3 (struct nvmet_fc_target_port*) ; 

int
FUNC4(struct nvmet_fc_target_port *target_port)
{
	struct nvmet_fc_tgtport *tgtport = FUNC3(target_port);

	FUNC1(tgtport);

	/* terminate any outstanding associations */
	FUNC0(tgtport);

	FUNC2(tgtport);

	return 0;
}