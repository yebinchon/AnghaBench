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
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct eerbuffer {struct eerbuffer* buffer; int /*<<< orphan*/  buffer_page_count; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  bufferlock ; 
 int /*<<< orphan*/  FUNC0 (struct eerbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eerbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct inode *inp, struct file *filp)
{
	struct eerbuffer *eerb;
	unsigned long flags;

	eerb = (struct eerbuffer *) filp->private_data;
	FUNC3(&bufferlock, flags);
	FUNC2(&eerb->list);
	FUNC4(&bufferlock, flags);
	FUNC0(eerb->buffer, eerb->buffer_page_count);
	FUNC1(eerb->buffer);
	FUNC1(eerb);

	return 0;
}