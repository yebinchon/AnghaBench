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
struct platform_device {TYPE_1__* resource; } ;
struct TYPE_4__ {int /*<<< orphan*/  gadget; int /*<<< orphan*/ * done; } ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 TYPE_2__* udc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	FUNC0(done);

	udc->done = &done;

	FUNC2(&udc->gadget);

	FUNC3(&done);

	FUNC1(pdev->resource[0].start,
			pdev->resource[0].end - pdev->resource[0].start + 1);

	return 0;
}