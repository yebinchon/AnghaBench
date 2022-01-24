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
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
struct cifsInodeInfo {int /*<<< orphan*/  can_cache_brlcks; } ;
struct TYPE_2__ {int /*<<< orphan*/  netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  dentry; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cifsInodeInfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cifsFileInfo *cfile, struct cifs_fid *fid, __u32 oplock)
{
	struct cifsInodeInfo *cinode = FUNC1(FUNC3(cfile->dentry));
	cfile->fid.netfid = fid->netfid;
	FUNC2(cinode, oplock);
	cinode->can_cache_brlcks = FUNC0(cinode);
}