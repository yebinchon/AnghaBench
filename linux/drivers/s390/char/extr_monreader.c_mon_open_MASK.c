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
struct mon_private {int /*<<< orphan*/  path; int /*<<< orphan*/  iucv_connected; int /*<<< orphan*/  iucv_severed; } ;
struct inode {int dummy; } ;
struct file {struct mon_private* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IUCV_IPRMDATA ; 
 int /*<<< orphan*/  MON_IN_USE ; 
 int /*<<< orphan*/  MON_MSGLIM ; 
 int /*<<< orphan*/  MON_SERVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mon_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mon_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mon_private* FUNC7 () ; 
 int /*<<< orphan*/  mon_conn_wait_queue ; 
 int /*<<< orphan*/  FUNC8 (struct mon_private*) ; 
 int /*<<< orphan*/  mon_in_use ; 
 int /*<<< orphan*/  monreader_device ; 
 int /*<<< orphan*/  monreader_iucv_handler ; 
 int FUNC9 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_data_connect ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *filp)
{
	struct mon_private *monpriv;
	int rc;

	/*
	 * only one user allowed
	 */
	rc = -EBUSY;
	if (FUNC11(MON_IN_USE, &mon_in_use))
		goto out;

	rc = -ENOMEM;
	monpriv = FUNC7();
	if (!monpriv)
		goto out_use;

	/*
	 * Connect to *MONITOR service
	 */
	monpriv->path = FUNC4(MON_MSGLIM, IUCV_IPRMDATA, GFP_KERNEL);
	if (!monpriv->path)
		goto out_priv;
	rc = FUNC5(monpriv->path, &monreader_iucv_handler,
			       MON_SERVICE, NULL, user_data_connect, monpriv);
	if (rc) {
		FUNC10("Connecting to the z/VM *MONITOR system service "
		       "failed with rc=%i\n", rc);
		rc = -EIO;
		goto out_path;
	}
	/*
	 * Wait for connection confirmation
	 */
	FUNC12(mon_conn_wait_queue,
		   FUNC0(&monpriv->iucv_connected) ||
		   FUNC0(&monpriv->iucv_severed));
	if (FUNC0(&monpriv->iucv_severed)) {
		FUNC1(&monpriv->iucv_severed, 0);
		FUNC1(&monpriv->iucv_connected, 0);
		rc = -EIO;
		goto out_path;
	}
	filp->private_data = monpriv;
	FUNC3(monreader_device, monpriv);
	return FUNC9(inode, filp);

out_path:
	FUNC6(monpriv->path);
out_priv:
	FUNC8(monpriv);
out_use:
	FUNC2(MON_IN_USE, &mon_in_use);
out:
	return rc;
}