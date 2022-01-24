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
struct zcrypt_queue {int dummy; } ;
struct ap_queue {TYPE_1__* card; struct zcrypt_queue* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct ap_device {TYPE_2__ device; } ;
struct TYPE_3__ {int /*<<< orphan*/  functions; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_FUNC_COPRO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cca_queue_attr_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct zcrypt_queue*) ; 

__attribute__((used)) static void FUNC4(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC2(&ap_dev->device);
	struct zcrypt_queue *zq = aq->private;

	if (FUNC0(&aq->card->functions, AP_FUNC_COPRO))
		FUNC1(&ap_dev->device.kobj, &cca_queue_attr_group);
	if (zq)
		FUNC3(zq);
}