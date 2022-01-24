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
struct zcrypt_queue {int online; int /*<<< orphan*/  reply; void* ops; int /*<<< orphan*/  load; struct ap_queue* queue; } ;
struct ap_queue {struct zcrypt_queue* private; int /*<<< orphan*/  request_timeout; } ;
struct ap_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEX2C_CLEANUP_TIME ; 
 int /*<<< orphan*/  CEX2C_MAX_XCRB_MESSAGE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSGTYPE06_NAME ; 
 int /*<<< orphan*/  MSGTYPE06_VARIANT_DEFAULT ; 
 int /*<<< orphan*/  MSGTYPE06_VARIANT_NORNG ; 
 int /*<<< orphan*/  FUNC0 (struct ap_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ap_queue* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ap_queue*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zcrypt_queue* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zcrypt_queue*) ; 
 int FUNC7 (struct zcrypt_queue*) ; 

__attribute__((used)) static int FUNC8(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC2(&ap_dev->device);
	struct zcrypt_queue *zq;
	int rc;

	zq = FUNC5(CEX2C_MAX_XCRB_MESSAGE_SIZE);
	if (!zq)
		return -ENOMEM;
	zq->queue = aq;
	zq->online = 1;
	FUNC1(&zq->load, 0);
	rc = FUNC3(aq);
	if (rc < 0) {
		FUNC6(zq);
		return rc;
	}
	if (rc)
		zq->ops = FUNC4(MSGTYPE06_NAME,
					 MSGTYPE06_VARIANT_DEFAULT);
	else
		zq->ops = FUNC4(MSGTYPE06_NAME,
					 MSGTYPE06_VARIANT_NORNG);
	FUNC0(aq, &zq->reply);
	aq->request_timeout = CEX2C_CLEANUP_TIME;
	aq->private = zq;
	rc = FUNC7(zq);
	if (rc) {
		aq->private = NULL;
		FUNC6(zq);
	}
	return rc;
}