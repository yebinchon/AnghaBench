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
struct pvscsi_adapter {int /*<<< orphan*/  use_req_threshold; struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {scalar_t__ reqProdIdx; scalar_t__ reqConsIdx; scalar_t__ reqCallThreshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvscsi_adapter const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter const*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static void FUNC3(const struct pvscsi_adapter *adapter,
			   unsigned char op)
{
	if (FUNC2(op)) {
		struct PVSCSIRingsState *s = adapter->rings_state;

		if (!adapter->use_req_threshold ||
		    s->reqProdIdx - s->reqConsIdx >= s->reqCallThreshold)
			FUNC0(adapter);
	} else {
		FUNC1(adapter);
	}
}