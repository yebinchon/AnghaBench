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
struct afs_vlserver {size_t name_len; unsigned short port; int /*<<< orphan*/  name; int /*<<< orphan*/  probe_lock; int /*<<< orphan*/  probe_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct afs_vlserver* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_vlserver*,char const*,size_t) ; 

struct afs_vlserver *FUNC7(const char *name, size_t name_len,
					unsigned short port)
{
	struct afs_vlserver *vlserver;

	vlserver = FUNC2(FUNC6(vlserver, name, name_len + 1),
			   GFP_KERNEL);
	if (vlserver) {
		FUNC0(&vlserver->usage, 1);
		FUNC4(&vlserver->lock);
		FUNC1(&vlserver->probe_wq);
		FUNC5(&vlserver->probe_lock);
		vlserver->name_len = name_len;
		vlserver->port = port;
		FUNC3(vlserver->name, name, name_len);
	}
	return vlserver;
}