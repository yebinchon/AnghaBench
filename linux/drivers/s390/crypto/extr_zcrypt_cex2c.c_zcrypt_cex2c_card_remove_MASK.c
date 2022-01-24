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
struct ap_device {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct zcrypt_card* private; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zcrypt_card*) ; 

__attribute__((used)) static void FUNC2(struct ap_device *ap_dev)
{
	struct zcrypt_card *zc = FUNC0(&ap_dev->device)->private;

	if (zc)
		FUNC1(zc);
}