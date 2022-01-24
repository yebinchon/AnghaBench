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
struct ohci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  ed_bulktail; int /*<<< orphan*/  ed_controltail; } ;
struct debug_buffer {scalar_t__ page; struct ohci_hcd* ohci; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 size_t FUNC0 (struct ohci_hcd*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(struct debug_buffer *buf)
{
	struct ohci_hcd		*ohci;
	size_t			temp, size;
	unsigned long		flags;

	ohci = buf->ohci;
	size = PAGE_SIZE;

	/* display control and bulk lists together, for simplicity */
	FUNC1 (&ohci->lock, flags);
	temp = FUNC0(ohci, buf->page, size, ohci->ed_controltail);
	temp += FUNC0(ohci, buf->page + temp, size - temp,
			  ohci->ed_bulktail);
	FUNC2 (&ohci->lock, flags);

	return temp;
}