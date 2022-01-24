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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  unlinked; } ;
struct u132_endp {scalar_t__ dequeueing; struct u132* u132; } ;
struct u132 {int going; int /*<<< orphan*/  scheduler_lock; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct u132*,struct u132_endp*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct u132*,struct u132_endp*,struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, struct urb *urb, u8 *buf,
	int len, int toggle_bits, int error_count, int condition_code,
	int repeat_number, int halted, int skipped, int actual, int non_null)
{
	struct u132_endp *endp = data;
	struct u132 *u132 = endp->u132;
	FUNC1(&u132->scheduler_lock);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		FUNC2(&u132->scheduler_lock);
		FUNC3(u132, endp, urb, -ENODEV);
		return;
	} else if (endp->dequeueing) {
		endp->dequeueing = 0;
		FUNC2(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, -EINTR);
		return;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed "
				"urb=%p\n", urb);
		FUNC2(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, -ENODEV);
		return;
	} else if (!urb->unlinked) {
		FUNC2(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, 0);
		return;
	} else {
		FUNC0(&u132->platform_dev->dev, "CALLBACK called urb=%p "
				"unlinked=%d\n", urb, urb->unlinked);
		FUNC2(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, 0);
		return;
	}
}