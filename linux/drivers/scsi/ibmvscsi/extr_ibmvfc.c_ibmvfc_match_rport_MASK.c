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
struct ibmvfc_event {TYPE_1__* cmnd; } ;
typedef  void fc_rport ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ibmvfc_event *evt, void *rport)
{
	struct fc_rport *cmd_rport;

	if (evt->cmnd) {
		cmd_rport = FUNC1(FUNC0(evt->cmnd->device));
		if (cmd_rport == rport)
			return 1;
	}
	return 0;
}