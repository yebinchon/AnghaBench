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
struct usb_bus {int busnum; } ;
struct mon_bus {int /*<<< orphan*/ * dent_t; int /*<<< orphan*/ * dent_u; void* dent_s; } ;

/* Variables and functions */
 void* FUNC0 (char*,int,int /*<<< orphan*/ *,struct mon_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mon_dir ; 
 int /*<<< orphan*/  mon_fops_stat ; 
 int /*<<< orphan*/  mon_fops_text_t ; 
 int /*<<< orphan*/  mon_fops_text_u ; 
 int FUNC2 (char*,int,char*,int) ; 

int FUNC3(struct mon_bus *mbus, const struct usb_bus *ubus)
{
	enum { NAMESZ = 10 };
	char name[NAMESZ];
	int busnum = ubus? ubus->busnum: 0;
	int rc;

	if (mon_dir == NULL)
		return 0;

	if (ubus != NULL) {
		rc = FUNC2(name, NAMESZ, "%dt", busnum);
		if (rc <= 0 || rc >= NAMESZ)
			goto err_print_t;
		mbus->dent_t = FUNC0(name, 0600, mon_dir, mbus,
							     &mon_fops_text_t);
	}

	rc = FUNC2(name, NAMESZ, "%du", busnum);
	if (rc <= 0 || rc >= NAMESZ)
		goto err_print_u;
	mbus->dent_u = FUNC0(name, 0600, mon_dir, mbus,
					   &mon_fops_text_u);

	rc = FUNC2(name, NAMESZ, "%ds", busnum);
	if (rc <= 0 || rc >= NAMESZ)
		goto err_print_s;
	mbus->dent_s = FUNC0(name, 0600, mon_dir, mbus,
					   &mon_fops_stat);

	return 1;

err_print_s:
	FUNC1(mbus->dent_u);
	mbus->dent_u = NULL;
err_print_u:
	if (ubus != NULL) {
		FUNC1(mbus->dent_t);
		mbus->dent_t = NULL;
	}
err_print_t:
	return 0;
}