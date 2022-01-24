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
typedef  int /*<<< orphan*/  u16 ;
struct fw_event_work {struct MPT3SAS_ADAPTER* ioc; int /*<<< orphan*/  device_handle; int /*<<< orphan*/  event; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPT3SAS_TURN_ON_PFA_LED ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 struct fw_event_work* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_event_work*) ; 

__attribute__((used)) static void
FUNC3(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
	struct fw_event_work *fw_event;

	fw_event = FUNC1(0);
	if (!fw_event)
		return;
	fw_event->event = MPT3SAS_TURN_ON_PFA_LED;
	fw_event->device_handle = handle;
	fw_event->ioc = ioc;
	FUNC0(ioc, fw_event);
	FUNC2(fw_event);
}