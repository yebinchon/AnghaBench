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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_close ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  sbc8360_is_open ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	if (expect_close == 42)
		FUNC2();
	else
		FUNC1("SBC8360 device closed unexpectedly.  SBC8360 will not stop!\n");

	FUNC0(0, &sbc8360_is_open);
	expect_close = 0;
	return 0;
}