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
struct vudc_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vudc_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct vudc_device *udc_dev)
{
	FUNC1(udc_dev->pdev);
	FUNC0(udc_dev);
}