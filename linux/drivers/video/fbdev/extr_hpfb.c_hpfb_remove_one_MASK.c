#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct dio_dev {scalar_t__ scode; TYPE_2__ resource; } ;
struct TYPE_4__ {void* screen_base; int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 scalar_t__ DIOII_SCBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ fb_info ; 
 scalar_t__ fb_regs ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct dio_dev *d)
{
	FUNC4(&fb_info);
	if (d->scode >= DIOII_SCBASE)
		FUNC1((void *)fb_regs);
	FUNC2(d->resource.start, FUNC3(&d->resource));
	FUNC0(&fb_info.cmap);
	if (fb_info.screen_base)
		FUNC1(fb_info.screen_base);
}