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
struct vc_data {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct vc_data* d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (struct inode*) ; 
 unsigned int fg_console ; 
 TYPE_1__* vc_cons ; 

__attribute__((used)) static struct vc_data*
FUNC2(struct inode *inode, int *viewed)
{
	unsigned int currcons = FUNC1(inode);

	FUNC0();

	if (currcons == 0) {
		currcons = fg_console;
		if (viewed)
			*viewed = 1;
	} else {
		currcons--;
		if (viewed)
			*viewed = 0;
	}
	return vc_cons[currcons].d;
}