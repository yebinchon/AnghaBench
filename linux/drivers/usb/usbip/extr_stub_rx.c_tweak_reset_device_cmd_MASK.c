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
struct urb {TYPE_1__* dev; scalar_t__ context; } ;
struct stub_priv {struct stub_device* sdev; } ;
struct stub_device {int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct urb *urb)
{
	struct stub_priv *priv = (struct stub_priv *) urb->context;
	struct stub_device *sdev = priv->sdev;

	FUNC1(&urb->dev->dev, "usb_queue_reset_device\n");

	if (FUNC2(sdev->udev, NULL) < 0) {
		FUNC0(&urb->dev->dev, "could not obtain lock to reset device\n");
		return 0;
	}
	FUNC3(sdev->udev);
	FUNC4(sdev->udev);

	return 0;
}