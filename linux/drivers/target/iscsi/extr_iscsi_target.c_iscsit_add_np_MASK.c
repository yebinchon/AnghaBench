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
struct sockaddr_storage {int dummy; } ;
struct iscsi_np {int np_network_transport; int np_exports; TYPE_1__* np_transport; int /*<<< orphan*/  np_sockaddr; int /*<<< orphan*/  np_list; int /*<<< orphan*/  np_thread_state; int /*<<< orphan*/  np_thread; int /*<<< orphan*/  np_login_timer; int /*<<< orphan*/  np_restart_comp; int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  np_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iscsi_np* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISCSI_NP_THREAD_ACTIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPF_IP_NETWORK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_np_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iscsi_handle_login_thread_timeout ; 
 int /*<<< orphan*/  iscsi_target_login_thread ; 
 int FUNC5 (struct iscsi_np*,struct sockaddr_storage*) ; 
 struct iscsi_np* FUNC6 (struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct iscsi_np*,char*) ; 
 struct iscsi_np* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  np_lock ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct iscsi_np *FUNC17(
	struct sockaddr_storage *sockaddr,
	int network_transport)
{
	struct iscsi_np *np;
	int ret;

	FUNC11(&np_lock);

	/*
	 * Locate the existing struct iscsi_np if already active..
	 */
	np = FUNC6(sockaddr, network_transport);
	if (np) {
		FUNC12(&np_lock);
		return np;
	}

	np = FUNC9(sizeof(*np), GFP_KERNEL);
	if (!np) {
		FUNC12(&np_lock);
		return FUNC0(-ENOMEM);
	}

	np->np_flags |= NPF_IP_NETWORK;
	np->np_network_transport = network_transport;
	FUNC15(&np->np_thread_lock);
	FUNC4(&np->np_restart_comp);
	FUNC1(&np->np_list);

	FUNC16(&np->np_login_timer, iscsi_handle_login_thread_timeout, 0);

	ret = FUNC5(np, sockaddr);
	if (ret != 0) {
		FUNC7(np);
		FUNC12(&np_lock);
		return FUNC0(ret);
	}

	np->np_thread = FUNC8(iscsi_target_login_thread, np, "iscsi_np");
	if (FUNC2(np->np_thread)) {
		FUNC14("Unable to create kthread: iscsi_np\n");
		ret = FUNC3(np->np_thread);
		FUNC7(np);
		FUNC12(&np_lock);
		return FUNC0(ret);
	}
	/*
	 * Increment the np_exports reference count now to prevent
	 * iscsit_del_np() below from being run while a new call to
	 * iscsi_tpg_add_network_portal() for a matching iscsi_np is
	 * active.  We don't need to hold np->np_thread_lock at this
	 * point because iscsi_np has not been added to g_np_list yet.
	 */
	np->np_exports = 1;
	np->np_thread_state = ISCSI_NP_THREAD_ACTIVE;

	FUNC10(&np->np_list, &g_np_list);
	FUNC12(&np_lock);

	FUNC13("CORE[0] - Added Network Portal: %pISpc on %s\n",
		&np->np_sockaddr, np->np_transport->name);

	return np;
}