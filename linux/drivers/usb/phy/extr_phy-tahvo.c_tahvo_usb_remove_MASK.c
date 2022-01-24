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
struct tahvo_usb {int /*<<< orphan*/  ick; int /*<<< orphan*/  phy; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tahvo_usb*) ; 
 struct tahvo_usb* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tahvo_usb *tu = FUNC3(pdev);

	FUNC2(tu->irq, tu);
	FUNC4(&tu->phy);
	if (!FUNC0(tu->ick))
		FUNC1(tu->ick);

	return 0;
}