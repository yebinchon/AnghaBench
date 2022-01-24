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
struct usb_rx {int /*<<< orphan*/  free_list; } ;
struct rx_cxt {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  avail_count; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct rx_cxt *rx, struct usb_rx *r)
{
	unsigned long flags;

	FUNC1(&rx->rx_lock, flags);

	FUNC0(&r->free_list, &rx->free_list);
	rx->avail_count++;

	FUNC2(&rx->rx_lock, flags);
}