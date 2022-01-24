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
typedef  int /*<<< orphan*/  wildcard ;
typedef  char u8 ;
struct iucv_path {int msglim; int /*<<< orphan*/  flags; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; char* srv_name; char* info_path; int /*<<< orphan*/  lock; int /*<<< orphan*/  sndbuf_work; struct iucv_path* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENODEV ; 
 scalar_t__ IUCV_CONNECTED ; 
 scalar_t__ IUCV_DISCONN ; 
 int /*<<< orphan*/  IUCV_IPRMDATA ; 
 int hvc_iucv_devices ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  hvc_iucv_filter_lock ; 
 int /*<<< orphan*/  hvc_iucv_handler ; 
 struct hvc_iucv_private** hvc_iucv_table ; 
 int FUNC2 (struct iucv_path*,int /*<<< orphan*/ *,char*,struct hvc_iucv_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct iucv_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct iucv_path*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int FUNC13(struct iucv_path *path, u8 *ipvmid,
				  u8 *ipuser)
{
	struct hvc_iucv_private *priv, *tmp;
	u8 wildcard[9] = "lnxhvc  ";
	int i, rc, find_unused;
	u8 nuser_data[16];
	u8 vm_user_id[9];

	FUNC0(wildcard, sizeof(wildcard));
	find_unused = !FUNC5(wildcard, ipuser, 8);

	/* First, check if the pending path request is managed by this
	 * IUCV handler:
	 * - find a disconnected device if ipuser contains the wildcard
	 * - find the device that matches the terminal ID in ipuser
	 */
	priv = NULL;
	for (i = 0; i < hvc_iucv_devices; i++) {
		tmp = hvc_iucv_table[i];
		if (!tmp)
			continue;

		if (find_unused) {
			FUNC11(&tmp->lock);
			if (tmp->iucv_state == IUCV_DISCONN)
				priv = tmp;
			FUNC12(&tmp->lock);

		} else if (!FUNC5(tmp->srv_name, ipuser, 8))
				priv = tmp;
		if (priv)
			break;
	}
	if (!priv)
		return -ENODEV;

	/* Enforce that ipvmid is allowed to connect to us */
	FUNC8(&hvc_iucv_filter_lock);
	rc = FUNC1(ipvmid);
	FUNC9(&hvc_iucv_filter_lock);
	if (rc) {
		FUNC4(path, ipuser);
		FUNC3(path);
		FUNC6(vm_user_id, ipvmid, 8);
		vm_user_id[8] = 0;
		FUNC7("A connection request from z/VM user ID %s "
			"was refused\n", vm_user_id);
		return 0;
	}

	FUNC11(&priv->lock);

	/* If the terminal is already connected or being severed, then sever
	 * this path to enforce that there is only ONE established communication
	 * path per terminal. */
	if (priv->iucv_state != IUCV_DISCONN) {
		FUNC4(path, ipuser);
		FUNC3(path);
		goto out_path_handled;
	}

	/* accept path */
	FUNC6(nuser_data, ipuser + 8, 8);  /* remote service (for af_iucv) */
	FUNC6(nuser_data + 8, ipuser, 8);  /* local service  (for af_iucv) */
	path->msglim = 0xffff;		    /* IUCV MSGLIMIT */
	path->flags &= ~IUCV_IPRMDATA;	    /* TODO: use IUCV_IPRMDATA */
	rc = FUNC2(path, &hvc_iucv_handler, nuser_data, priv);
	if (rc) {
		FUNC4(path, ipuser);
		FUNC3(path);
		goto out_path_handled;
	}
	priv->path = path;
	priv->iucv_state = IUCV_CONNECTED;

	/* store path information */
	FUNC6(priv->info_path, ipvmid, 8);
	FUNC6(priv->info_path + 8, ipuser + 8, 8);

	/* flush buffered output data... */
	FUNC10(&priv->sndbuf_work, 5);

out_path_handled:
	FUNC12(&priv->lock);
	return 0;
}