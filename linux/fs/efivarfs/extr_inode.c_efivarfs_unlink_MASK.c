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
struct inode {int dummy; } ;
struct efivar_entry {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct efivar_entry* i_private; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct efivar_entry*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry)
{
	struct efivar_entry *var = FUNC0(dentry)->i_private;

	if (FUNC3(var))
		return -EINVAL;

	FUNC2(FUNC0(dentry));
	FUNC1(dentry);
	return 0;
}