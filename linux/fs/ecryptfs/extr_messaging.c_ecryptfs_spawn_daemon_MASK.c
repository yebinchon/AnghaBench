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
struct file {int dummy; } ;
struct ecryptfs_daemon {int /*<<< orphan*/  euid_chain; scalar_t__ num_queued_msg_ctx; int /*<<< orphan*/  wait; int /*<<< orphan*/  msg_ctx_out_queue; int /*<<< orphan*/  mux; struct file* file; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/ * ecryptfs_daemon_hash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ecryptfs_daemon* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct ecryptfs_daemon **daemon, struct file *file)
{
	int rc = 0;

	(*daemon) = FUNC4(sizeof(**daemon), GFP_KERNEL);
	if (!(*daemon)) {
		rc = -ENOMEM;
		goto out;
	}
	(*daemon)->file = file;
	FUNC5(&(*daemon)->mux);
	FUNC0(&(*daemon)->msg_ctx_out_queue);
	FUNC3(&(*daemon)->wait);
	(*daemon)->num_queued_msg_ctx = 0;
	FUNC2(&(*daemon)->euid_chain,
		       &ecryptfs_daemon_hash[FUNC1()]);
out:
	return rc;
}