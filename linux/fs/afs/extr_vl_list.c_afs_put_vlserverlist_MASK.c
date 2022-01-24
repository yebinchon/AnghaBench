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
struct afs_vlserver_list {int nr_servers; TYPE_1__* servers; int /*<<< orphan*/  usage; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_net*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_vlserver_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

void FUNC3(struct afs_net *net, struct afs_vlserver_list *vllist)
{
	if (vllist) {
		unsigned int u = FUNC1(&vllist->usage);

		//_debug("VLLS PUT %p{%u}", vllist, u);
		if (u == 0) {
			int i;

			for (i = 0; i < vllist->nr_servers; i++) {
				FUNC0(net, vllist->servers[i].server);
			}
			FUNC2(vllist, rcu);
		}
	}
}