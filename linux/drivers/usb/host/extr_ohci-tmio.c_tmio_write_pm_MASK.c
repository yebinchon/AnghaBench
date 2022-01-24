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
typedef  int u16 ;
struct usb_hcd {int dummy; } ;
struct tmio_hcd {int /*<<< orphan*/  lock; scalar_t__ ccr; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CCR_PM ; 
 int CCR_PM_CKRNEN ; 
 int CCR_PM_GKEN ; 
 int CCR_PM_PMEE ; 
 int CCR_PM_PMES ; 
 struct tmio_hcd* FUNC0 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC1(dev);
	struct tmio_hcd *tmio = FUNC0(hcd);
	u16 pm;
	unsigned long flags;

	FUNC2(&tmio->lock, flags);

	pm = CCR_PM_GKEN | CCR_PM_CKRNEN |
	     CCR_PM_PMEE | CCR_PM_PMES;

	FUNC4(pm, tmio->ccr + CCR_PM);
	FUNC3(&tmio->lock, flags);
}