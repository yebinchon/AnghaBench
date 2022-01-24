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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct inode *inode1, u64 loff1,
				       struct inode *inode2, u64 loff2, u64 len)
{
	FUNC1(&FUNC0(inode1)->io_tree, loff1, loff1 + len - 1);
	FUNC1(&FUNC0(inode2)->io_tree, loff2, loff2 + len - 1);
}