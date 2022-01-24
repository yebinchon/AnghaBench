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
struct cifsInodeInfo {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_INODE_PENDING_OPLOCK_BREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct cifsInodeInfo *cinode)
{
	FUNC0(CIFS_INODE_PENDING_OPLOCK_BREAK, &cinode->flags);
	FUNC1(&cinode->flags, CIFS_INODE_PENDING_OPLOCK_BREAK);
}