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
struct cifsInodeInfo {scalar_t__ writers; int /*<<< orphan*/  writers_lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_INODE_PENDING_WRITERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct cifsInodeInfo *cinode)
{
	FUNC1(&cinode->writers_lock);
	cinode->writers--;
	if (cinode->writers == 0) {
		FUNC0(CIFS_INODE_PENDING_WRITERS, &cinode->flags);
		FUNC3(&cinode->flags, CIFS_INODE_PENDING_WRITERS);
	}
	FUNC2(&cinode->writers_lock);
}