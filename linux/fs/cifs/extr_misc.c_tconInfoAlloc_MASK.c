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
struct TYPE_2__ {int /*<<< orphan*/  fid_mutex; void* fid; } ;
struct cifs_tcon {int /*<<< orphan*/  num_remote_opens; int /*<<< orphan*/  num_local_opens; int /*<<< orphan*/  stat_lock; TYPE_1__ crfid; int /*<<< orphan*/  open_file_lock; int /*<<< orphan*/  tcon_list; int /*<<< orphan*/  openFileList; int /*<<< orphan*/  tc_count; int /*<<< orphan*/  tidStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsNew ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_tcon*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tconInfoAllocCount ; 

struct cifs_tcon *
FUNC7(void)
{
	struct cifs_tcon *ret_buf;

	ret_buf = FUNC4(sizeof(*ret_buf), GFP_KERNEL);
	if (!ret_buf)
		return NULL;
	ret_buf->crfid.fid = FUNC4(sizeof(*ret_buf->crfid.fid), GFP_KERNEL);
	if (!ret_buf->crfid.fid) {
		FUNC3(ret_buf);
		return NULL;
	}

	FUNC1(&tconInfoAllocCount);
	ret_buf->tidStatus = CifsNew;
	++ret_buf->tc_count;
	FUNC0(&ret_buf->openFileList);
	FUNC0(&ret_buf->tcon_list);
	FUNC6(&ret_buf->open_file_lock);
	FUNC5(&ret_buf->crfid.fid_mutex);
	FUNC6(&ret_buf->stat_lock);
	FUNC2(&ret_buf->num_local_opens, 0);
	FUNC2(&ret_buf->num_remote_opens, 0);

	return ret_buf;
}