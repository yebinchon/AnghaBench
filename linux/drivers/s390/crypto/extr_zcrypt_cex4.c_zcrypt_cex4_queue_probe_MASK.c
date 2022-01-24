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
struct zcrypt_queue {int online; int /*<<< orphan*/  reply; int /*<<< orphan*/  load; struct ap_queue* queue; void* ops; } ;
struct ap_queue {TYPE_1__* card; struct zcrypt_queue* private; int /*<<< orphan*/  request_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct ap_device {TYPE_2__ device; } ;
struct TYPE_3__ {int /*<<< orphan*/  functions; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_FUNC_ACCEL ; 
 int /*<<< orphan*/  AP_FUNC_COPRO ; 
 int /*<<< orphan*/  AP_FUNC_EP11 ; 
 int /*<<< orphan*/  CEX4A_MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  CEX4C_MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  CEX4_CLEANUP_TIME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSGTYPE06_NAME ; 
 int /*<<< orphan*/  MSGTYPE06_VARIANT_DEFAULT ; 
 int /*<<< orphan*/  MSGTYPE06_VARIANT_EP11 ; 
 int /*<<< orphan*/  MSGTYPE50_NAME ; 
 int /*<<< orphan*/  MSGTYPE50_VARIANT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ap_queue*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cca_queue_attr_group ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zcrypt_queue* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zcrypt_queue*) ; 
 int FUNC8 (struct zcrypt_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct zcrypt_queue*) ; 

__attribute__((used)) static int FUNC10(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC4(&ap_dev->device);
	struct zcrypt_queue *zq;
	int rc;

	if (FUNC1(&aq->card->functions, AP_FUNC_ACCEL)) {
		zq = FUNC6(CEX4A_MAX_MESSAGE_SIZE);
		if (!zq)
			return -ENOMEM;
		zq->ops = FUNC5(MSGTYPE50_NAME,
					 MSGTYPE50_VARIANT_DEFAULT);
	} else if (FUNC1(&aq->card->functions, AP_FUNC_COPRO)) {
		zq = FUNC6(CEX4C_MAX_MESSAGE_SIZE);
		if (!zq)
			return -ENOMEM;
		zq->ops = FUNC5(MSGTYPE06_NAME,
					 MSGTYPE06_VARIANT_DEFAULT);
	} else if (FUNC1(&aq->card->functions, AP_FUNC_EP11)) {
		zq = FUNC6(CEX4C_MAX_MESSAGE_SIZE);
		if (!zq)
			return -ENOMEM;
		zq->ops = FUNC5(MSGTYPE06_NAME,
					 MSGTYPE06_VARIANT_EP11);
	} else {
		return -ENODEV;
	}

	zq->queue = aq;
	zq->online = 1;
	FUNC2(&zq->load, 0);
	FUNC0(aq, &zq->reply);
	aq->request_timeout = CEX4_CLEANUP_TIME,
	aq->private = zq;
	rc = FUNC8(zq);
	if (rc) {
		aq->private = NULL;
		FUNC7(zq);
		goto out;
	}

	if (FUNC1(&aq->card->functions, AP_FUNC_COPRO)) {
		rc = FUNC3(&ap_dev->device.kobj,
					&cca_queue_attr_group);
		if (rc)
			FUNC9(zq);
	}

out:
	return rc;
}