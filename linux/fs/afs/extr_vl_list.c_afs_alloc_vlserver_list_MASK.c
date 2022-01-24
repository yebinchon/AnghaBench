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
struct afs_vlserver_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct afs_vlserver_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  servers ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vlserver_list*,int /*<<< orphan*/ ,unsigned int) ; 

struct afs_vlserver_list *FUNC4(unsigned int nr_servers)
{
	struct afs_vlserver_list *vllist;

	vllist = FUNC1(FUNC3(vllist, servers, nr_servers), GFP_KERNEL);
	if (vllist) {
		FUNC0(&vllist->usage, 1);
		FUNC2(&vllist->lock);
	}

	return vllist;
}