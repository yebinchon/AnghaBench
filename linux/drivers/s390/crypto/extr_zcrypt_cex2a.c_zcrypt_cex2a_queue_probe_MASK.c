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
struct zcrypt_queue {int online; int /*<<< orphan*/  reply; int /*<<< orphan*/  load; struct ap_queue* queue; int /*<<< orphan*/  ops; } ;
struct ap_queue {struct zcrypt_queue* private; int /*<<< orphan*/  request_timeout; } ;
struct ap_device {int device_type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  AP_DEVICE_TYPE_CEX2A 129 
#define  AP_DEVICE_TYPE_CEX3A 128 
 int /*<<< orphan*/  CEX2A_CLEANUP_TIME ; 
 int /*<<< orphan*/  CEX2A_MAX_RESPONSE_SIZE ; 
 int /*<<< orphan*/  CEX3A_MAX_RESPONSE_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSGTYPE50_NAME ; 
 int /*<<< orphan*/  MSGTYPE50_VARIANT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ap_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ap_queue* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zcrypt_queue* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zcrypt_queue*) ; 
 int FUNC6 (struct zcrypt_queue*) ; 

__attribute__((used)) static int FUNC7(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC2(&ap_dev->device);
	struct zcrypt_queue *zq = NULL;
	int rc;

	switch (ap_dev->device_type) {
	case AP_DEVICE_TYPE_CEX2A:
		zq = FUNC4(CEX2A_MAX_RESPONSE_SIZE);
		if (!zq)
			return -ENOMEM;
		break;
	case AP_DEVICE_TYPE_CEX3A:
		zq = FUNC4(CEX3A_MAX_RESPONSE_SIZE);
		if (!zq)
			return -ENOMEM;
		break;
	}
	if (!zq)
		return -ENODEV;
	zq->ops = FUNC3(MSGTYPE50_NAME, MSGTYPE50_VARIANT_DEFAULT);
	zq->queue = aq;
	zq->online = 1;
	FUNC1(&zq->load, 0);
	FUNC0(aq, &zq->reply);
	aq->request_timeout = CEX2A_CLEANUP_TIME,
	aq->private = zq;
	rc = FUNC6(zq);
	if (rc) {
		aq->private = NULL;
		FUNC5(zq);
	}

	return rc;
}