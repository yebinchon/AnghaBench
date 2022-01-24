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
struct mon_private {int /*<<< orphan*/ * path; scalar_t__ read_index; scalar_t__ write_index; int /*<<< orphan*/  msglim_count; int /*<<< orphan*/  read_ready; int /*<<< orphan*/  iucv_connected; int /*<<< orphan*/  iucv_severed; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mon_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  user_data_sever ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct mon_private *monpriv = FUNC1(dev);
	int rc;

	if (!monpriv)
		return 0;
	if (monpriv->path) {
		rc = FUNC3(monpriv->path, user_data_sever);
		if (rc)
			FUNC4("Disconnecting the z/VM *MONITOR system service failed with rc=%i\n",
				rc);
		FUNC2(monpriv->path);
	}
	FUNC0(&monpriv->iucv_severed, 0);
	FUNC0(&monpriv->iucv_connected, 0);
	FUNC0(&monpriv->read_ready, 0);
	FUNC0(&monpriv->msglim_count, 0);
	monpriv->write_index  = 0;
	monpriv->read_index   = 0;
	monpriv->path = NULL;
	return 0;
}