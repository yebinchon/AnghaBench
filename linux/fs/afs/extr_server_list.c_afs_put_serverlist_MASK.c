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
struct afs_server_list {int nr_servers; TYPE_1__* servers; int /*<<< orphan*/  usage; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  server; int /*<<< orphan*/  cb_interest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_server_trace_put_slist ; 
 int /*<<< orphan*/  FUNC2 (struct afs_server_list*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct afs_net *net, struct afs_server_list *slist)
{
	int i;

	if (slist && FUNC3(&slist->usage)) {
		for (i = 0; i < slist->nr_servers; i++) {
			FUNC0(net, slist->servers[i].cb_interest);
			FUNC1(net, slist->servers[i].server,
				       afs_server_trace_put_slist);
		}
		FUNC2(slist);
	}
}