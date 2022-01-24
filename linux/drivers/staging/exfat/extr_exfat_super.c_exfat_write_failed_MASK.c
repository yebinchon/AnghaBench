#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ fid; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct address_space *mapping, loff_t to)
{
	struct inode *inode = mapping->host;

	if (to > FUNC2(inode)) {
		FUNC3(inode, FUNC2(inode));
		FUNC0(inode)->fid.size = FUNC2(inode);
		FUNC1(inode, FUNC2(inode));
	}
}