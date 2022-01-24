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
struct usb_onetouch {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; int /*<<< orphan*/  udev; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONETOUCH_PKT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *onetouch_)
{
	struct usb_onetouch *onetouch = (struct usb_onetouch *) onetouch_;

	if (onetouch) {
		FUNC3(onetouch->irq);
		FUNC0(onetouch->dev);
		FUNC2(onetouch->irq);
		FUNC1(onetouch->udev, ONETOUCH_PKT_LEN,
				  onetouch->data, onetouch->data_dma);
	}
}