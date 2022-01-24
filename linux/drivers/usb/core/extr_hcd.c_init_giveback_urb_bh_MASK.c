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
struct giveback_urb_bh {int /*<<< orphan*/  bh; int /*<<< orphan*/  head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  usb_giveback_urb_bh ; 

__attribute__((used)) static void FUNC3(struct giveback_urb_bh *bh)
{

	FUNC1(&bh->lock);
	FUNC0(&bh->head);
	FUNC2(&bh->bh, usb_giveback_urb_bh, (unsigned long)bh);
}