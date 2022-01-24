#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kref {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* usb_class ; 

__attribute__((used)) static void FUNC2(struct kref *kref)
{
	/* Ok, we cheat as we know we only have one usb_class */
	FUNC0(usb_class->class);
	FUNC1(usb_class);
	usb_class = NULL;
}