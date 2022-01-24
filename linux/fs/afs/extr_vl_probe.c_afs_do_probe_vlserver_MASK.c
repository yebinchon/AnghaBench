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
struct key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rtt; } ;
struct afs_vlserver {TYPE_2__ probe; int /*<<< orphan*/  probe_outstanding; int /*<<< orphan*/  lock; int /*<<< orphan*/  addresses; int /*<<< orphan*/  name; } ;
struct afs_net {int dummy; } ;
struct afs_error {int dummy; } ;
struct afs_call {int dummy; } ;
struct afs_addr_cursor {scalar_t__ index; int /*<<< orphan*/  abort_code; TYPE_1__* alist; } ;
struct TYPE_3__ {scalar_t__ nr_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_call*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*) ; 
 struct afs_call* FUNC5 (struct afs_net*,struct afs_addr_cursor*,struct key*,struct afs_vlserver*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_vlserver*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(struct afs_net *net,
				  struct afs_vlserver *server,
				  struct key *key,
				  unsigned int server_index,
				  struct afs_error *_e)
{
	struct afs_addr_cursor ac = {
		.index = 0,
	};
	struct afs_call *call;
	bool in_progress = false;

	FUNC2("%s", server->name);

	FUNC11(&server->lock);
	ac.alist = FUNC10(server->addresses,
					     FUNC8(&server->lock));
	FUNC12(&server->lock);

	FUNC7(&server->probe_outstanding, ac.alist->nr_addrs);
	FUNC9(&server->probe, 0, sizeof(server->probe));
	server->probe.rtt = UINT_MAX;

	for (ac.index = 0; ac.index < ac.alist->nr_addrs; ac.index++) {
		call = FUNC5(net, &ac, key, server,
					       server_index);
		if (!FUNC0(call)) {
			FUNC4(call);
			in_progress = true;
		} else {
			FUNC3(_e, FUNC1(call), ac.abort_code);
		}
	}

	if (!in_progress)
		FUNC6(server);
	return in_progress;
}