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
struct cifs_ses {int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  tcon_list; int /*<<< orphan*/  smb_ses_list; int /*<<< orphan*/  ses_count; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsNew ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cifs_ses* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sesInfoAllocCount ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct cifs_ses *
FUNC5(void)
{
	struct cifs_ses *ret_buf;

	ret_buf = FUNC2(sizeof(struct cifs_ses), GFP_KERNEL);
	if (ret_buf) {
		FUNC1(&sesInfoAllocCount);
		ret_buf->status = CifsNew;
		++ret_buf->ses_count;
		FUNC0(&ret_buf->smb_ses_list);
		FUNC0(&ret_buf->tcon_list);
		FUNC3(&ret_buf->session_mutex);
		FUNC4(&ret_buf->iface_lock);
	}
	return ret_buf;
}