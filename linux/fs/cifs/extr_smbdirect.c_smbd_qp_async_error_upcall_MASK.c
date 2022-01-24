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
struct smbd_connection {int dummy; } ;
struct ib_event {int event; TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR ; 
#define  IB_EVENT_CQ_ERR 129 
#define  IB_EVENT_QP_FATAL 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct smbd_connection*) ; 

__attribute__((used)) static void
FUNC3(struct ib_event *event, void *context)
{
	struct smbd_connection *info = context;

	FUNC1(ERR, "%s on device %s info %p\n",
		FUNC0(event->event), event->device->name, info);

	switch (event->event) {
	case IB_EVENT_CQ_ERR:
	case IB_EVENT_QP_FATAL:
		FUNC2(info);

	default:
		break;
	}
}