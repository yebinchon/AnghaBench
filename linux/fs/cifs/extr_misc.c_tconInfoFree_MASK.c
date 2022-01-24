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
struct TYPE_2__ {struct cifs_tcon* fid; } ;
struct cifs_tcon {struct cifs_tcon* dfs_path; TYPE_1__ crfid; int /*<<< orphan*/  password; struct cifs_tcon* nativeFileSystem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tconInfoAllocCount ; 

void
FUNC4(struct cifs_tcon *buf_to_free)
{
	if (buf_to_free == NULL) {
		FUNC1(FYI, "Null buffer passed to tconInfoFree\n");
		return;
	}
	FUNC0(&tconInfoAllocCount);
	FUNC2(buf_to_free->nativeFileSystem);
	FUNC3(buf_to_free->password);
	FUNC2(buf_to_free->crfid.fid);
#ifdef CONFIG_CIFS_DFS_UPCALL
	kfree(buf_to_free->dfs_path);
#endif
	FUNC2(buf_to_free);
}