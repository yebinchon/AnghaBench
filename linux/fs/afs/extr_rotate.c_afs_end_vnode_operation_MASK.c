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
struct afs_net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  abort_code; } ;
struct afs_fs_cursor {int error; TYPE_2__ ac; int /*<<< orphan*/  server_list; int /*<<< orphan*/  cbi; TYPE_1__* vnode; } ;
struct TYPE_3__ {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ECONNABORTED ; 
 int EDESTADDRREQ ; 
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_net*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct afs_fs_cursor *fc)
{
	struct afs_net *net = FUNC5(fc->vnode);

	if (fc->error == -EDESTADDRREQ ||
	    fc->error == -EADDRNOTAVAIL ||
	    fc->error == -ENETUNREACH ||
	    fc->error == -EHOSTUNREACH)
		FUNC1(fc);

	FUNC6(&fc->vnode->io_lock);

	FUNC2(&fc->ac);
	FUNC3(net, fc->cbi);
	FUNC4(net, fc->server_list);

	if (fc->error == -ECONNABORTED)
		fc->error = FUNC0(fc->ac.abort_code);

	return fc->error;
}