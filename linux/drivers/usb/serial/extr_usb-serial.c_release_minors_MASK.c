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
struct usb_serial {int num_ports; scalar_t__ minors_reserved; TYPE_1__** port; } ;
struct TYPE_2__ {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_minors ; 
 int /*<<< orphan*/  table_lock ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	int i;

	FUNC1(&table_lock);
	for (i = 0; i < serial->num_ports; ++i)
		FUNC0(&serial_minors, serial->port[i]->minor);
	FUNC2(&table_lock);
	serial->minors_reserved = 0;
}