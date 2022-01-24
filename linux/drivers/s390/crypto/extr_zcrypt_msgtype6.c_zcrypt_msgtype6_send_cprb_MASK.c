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
struct zcrypt_queue {int /*<<< orphan*/  queue; } ;
struct response_type {int /*<<< orphan*/  work; } ;
struct ica_xcRB {int dummy; } ;
struct ap_message {int rc; scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ap_message*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ap_message*) ; 
 int FUNC2 (struct zcrypt_queue*,struct ap_message*,struct ica_xcRB*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC5(struct zcrypt_queue *zq,
				    struct ica_xcRB *xcRB,
				    struct ap_message *ap_msg)
{
	int rc;
	struct response_type *rtype = (struct response_type *)(ap_msg->private);

	FUNC3(&rtype->work);
	FUNC1(zq->queue, ap_msg);
	rc = FUNC4(&rtype->work);
	if (rc == 0) {
		rc = ap_msg->rc;
		if (rc == 0)
			rc = FUNC2(zq, ap_msg, xcRB);
	} else
		/* Signal pending. */
		FUNC0(zq->queue, ap_msg);

	return rc;
}