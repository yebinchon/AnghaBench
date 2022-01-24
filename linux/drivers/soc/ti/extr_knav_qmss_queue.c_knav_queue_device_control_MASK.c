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
struct knav_queue_notify_config {int dummy; } ;
struct knav_queue {TYPE_2__* inst; } ;
typedef  enum knav_queue_ctrl_cmd { ____Placeholder_knav_queue_ctrl_cmd } knav_queue_ctrl_cmd ;
struct TYPE_4__ {int id; TYPE_1__* kdev; } ;
struct TYPE_3__ {int base_id; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  KNAV_QUEUE_DISABLE_NOTIFY 133 
#define  KNAV_QUEUE_ENABLE_NOTIFY 132 
#define  KNAV_QUEUE_FLUSH 131 
#define  KNAV_QUEUE_GET_COUNT 130 
#define  KNAV_QUEUE_GET_ID 129 
#define  KNAV_QUEUE_SET_NOTIFIER 128 
 int FUNC0 (struct knav_queue*) ; 
 int FUNC1 (struct knav_queue*) ; 
 int FUNC2 (struct knav_queue*) ; 
 int FUNC3 (struct knav_queue*) ; 
 int FUNC4 (struct knav_queue*,struct knav_queue_notify_config*) ; 

int FUNC5(void *qhandle, enum knav_queue_ctrl_cmd cmd,
				unsigned long arg)
{
	struct knav_queue *qh = qhandle;
	struct knav_queue_notify_config *cfg;
	int ret;

	switch ((int)cmd) {
	case KNAV_QUEUE_GET_ID:
		ret = qh->inst->kdev->base_id + qh->inst->id;
		break;

	case KNAV_QUEUE_FLUSH:
		ret = FUNC2(qh);
		break;

	case KNAV_QUEUE_SET_NOTIFIER:
		cfg = (void *)arg;
		ret = FUNC4(qh, cfg);
		break;

	case KNAV_QUEUE_ENABLE_NOTIFY:
		ret = FUNC1(qh);
		break;

	case KNAV_QUEUE_DISABLE_NOTIFY:
		ret = FUNC0(qh);
		break;

	case KNAV_QUEUE_GET_COUNT:
		ret = FUNC3(qh);
		break;

	default:
		ret = -ENOTSUPP;
		break;
	}
	return ret;
}