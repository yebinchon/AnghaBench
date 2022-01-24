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
struct per_user_data {int /*<<< orphan*/  restrict_domid; int /*<<< orphan*/  ring_prod_lock; int /*<<< orphan*/  ring_cons_mutex; int /*<<< orphan*/  bind_mutex; int /*<<< orphan*/  evtchn_wait; int /*<<< orphan*/ * name; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UNRESTRICTED_DOMID ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct per_user_data*) ; 
 struct per_user_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct per_user_data *u;

	u = FUNC3(sizeof(*u), GFP_KERNEL);
	if (u == NULL)
		return -ENOMEM;

	u->name = FUNC1(GFP_KERNEL, "evtchn:%s", current->comm);
	if (u->name == NULL) {
		FUNC2(u);
		return -ENOMEM;
	}

	FUNC0(&u->evtchn_wait);

	FUNC4(&u->bind_mutex);
	FUNC4(&u->ring_cons_mutex);
	FUNC5(&u->ring_prod_lock);

	u->restrict_domid = UNRESTRICTED_DOMID;

	filp->private_data = u;

	return FUNC6(inode, filp);
}