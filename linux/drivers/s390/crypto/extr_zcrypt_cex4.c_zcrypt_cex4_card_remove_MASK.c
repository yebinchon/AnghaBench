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
struct zcrypt_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct ap_device {TYPE_1__ device; } ;
struct ap_card {int /*<<< orphan*/  functions; struct zcrypt_card* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_FUNC_COPRO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cca_card_attr_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ap_card* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct zcrypt_card*) ; 

__attribute__((used)) static void FUNC4(struct ap_device *ap_dev)
{
	struct ap_card *ac = FUNC2(&ap_dev->device);
	struct zcrypt_card *zc = ac->private;

	if (FUNC0(&ac->functions, AP_FUNC_COPRO))
		FUNC1(&ap_dev->device.kobj, &cca_card_attr_group);
	if (zc)
		FUNC3(zc);
}