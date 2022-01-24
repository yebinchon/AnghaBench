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
struct zcrypt_queue {int dummy; } ;
struct ap_queue {struct zcrypt_queue* private; } ;
struct ap_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct ap_queue* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zcrypt_queue*) ; 

__attribute__((used)) static void FUNC2(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC0(&ap_dev->device);
	struct zcrypt_queue *zq = aq->private;

	if (zq)
		FUNC1(zq);
}