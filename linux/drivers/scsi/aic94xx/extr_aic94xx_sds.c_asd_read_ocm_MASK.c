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
struct asd_ocm_dir {int dummy; } ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct asd_ha_struct*,struct asd_ocm_dir*) ; 
 scalar_t__ FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct asd_ha_struct*,struct asd_ocm_dir*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ocm_dir*) ; 
 struct asd_ocm_dir* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct asd_ha_struct *asd_ha)
{
	int err;
	struct asd_ocm_dir *dir;

	if (FUNC1(asd_ha))
		return -1;

	dir = FUNC5(sizeof(*dir), GFP_KERNEL);
	if (!dir) {
		FUNC2("no memory for ocm dir\n");
		return -ENOMEM;
	}

	err = FUNC3(asd_ha, dir, 0);
	if (err)
		goto out;

	err = FUNC0(asd_ha, dir);
out:
	FUNC4(dir);
	return err;
}