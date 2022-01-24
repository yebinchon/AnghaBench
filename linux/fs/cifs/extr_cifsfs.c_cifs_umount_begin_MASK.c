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
struct super_block {int dummy; } ;
struct cifs_tcon {int tc_count; scalar_t__ tidStatus; TYPE_2__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* server; } ;
struct TYPE_3__ {int /*<<< orphan*/  response_q; int /*<<< orphan*/  request_q; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ CifsExiting ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct cifs_tcon* FUNC2 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct cifs_sb_info *cifs_sb = FUNC0(sb);
	struct cifs_tcon *tcon;

	if (cifs_sb == NULL)
		return;

	tcon = FUNC2(cifs_sb);

	FUNC4(&cifs_tcp_ses_lock);
	if ((tcon->tc_count > 1) || (tcon->tidStatus == CifsExiting)) {
		/* we have other mounts to same share or we have
		   already tried to force umount this and woken up
		   all waiting network requests, nothing to do */
		FUNC5(&cifs_tcp_ses_lock);
		return;
	} else if (tcon->tc_count == 1)
		tcon->tidStatus = CifsExiting;
	FUNC5(&cifs_tcp_ses_lock);

	/* cancel_brl_requests(tcon); */ /* BB mark all brl mids as exiting */
	/* cancel_notify_requests(tcon); */
	if (tcon->ses && tcon->ses->server) {
		FUNC1(FYI, "wake up tasks now - umount begin not complete\n");
		FUNC6(&tcon->ses->server->request_q);
		FUNC6(&tcon->ses->server->response_q);
		FUNC3(1); /* yield */
		/* we have to kick the requests once more */
		FUNC6(&tcon->ses->server->response_q);
		FUNC3(1);
	}

	return;
}