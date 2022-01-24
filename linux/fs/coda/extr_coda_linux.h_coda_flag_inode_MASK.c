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
struct coda_inode_info {int c_flags; int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ void FUNC3(struct inode *inode, int flag)
{
	struct coda_inode_info *cii = FUNC0(inode);

	FUNC1(&cii->c_lock);
	cii->c_flags |= flag;
	FUNC2(&cii->c_lock);
}