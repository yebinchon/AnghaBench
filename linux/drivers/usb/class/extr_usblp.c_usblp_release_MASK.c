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
struct usblp {scalar_t__ present; int /*<<< orphan*/  intf; scalar_t__ used; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct file {struct usblp* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usblp*) ; 
 int /*<<< orphan*/  usblp_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct usblp*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct usblp *usblp = file->private_data;

	usblp->flags &= ~LP_ABORT;

	FUNC0(&usblp_mutex);
	usblp->used = 0;
	if (usblp->present)
		FUNC4(usblp);

	FUNC2(usblp->intf);

	if (!usblp->present)		/* finish cleanup from disconnect */
		FUNC3(usblp);
	FUNC1(&usblp_mutex);
	return 0;
}