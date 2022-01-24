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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct ceph_vino {int dummy; } ;
struct TYPE_2__ {struct ceph_vino i_vino; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, void *data)
{
	FUNC0(inode)->i_vino = *(struct ceph_vino *)data;
	inode->i_ino = FUNC1(*(struct ceph_vino *)data);
	FUNC2(inode, 0);
	return 0;
}