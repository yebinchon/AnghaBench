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
struct monwrite_hdr {int /*<<< orphan*/  datalen; int /*<<< orphan*/  mod_level; int /*<<< orphan*/  release; int /*<<< orphan*/  version; int /*<<< orphan*/  record_num; int /*<<< orphan*/  applid; } ;
struct appldata_product_id {int /*<<< orphan*/  mod_lvl; int /*<<< orphan*/  release_nr; int /*<<< orphan*/  version_nr; int /*<<< orphan*/  record_nr; int /*<<< orphan*/  prod_fn; int /*<<< orphan*/  prod_nr; } ;
struct appldata_parameter_list {int /*<<< orphan*/  mod_lvl; int /*<<< orphan*/  release_nr; int /*<<< orphan*/  version_nr; int /*<<< orphan*/  record_nr; int /*<<< orphan*/  prod_fn; int /*<<< orphan*/  prod_nr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct appldata_product_id*,struct appldata_product_id*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct appldata_product_id*) ; 
 struct appldata_product_id* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct monwrite_hdr *myhdr, char *buffer, int fcn)
{
	struct appldata_parameter_list *parm_list;
	struct appldata_product_id *id;
	int rc;

	id = FUNC2(sizeof(*id), GFP_KERNEL);
	parm_list = FUNC2(sizeof(*parm_list), GFP_KERNEL);
	rc = -ENOMEM;
	if (!id || !parm_list)
		goto out;
	FUNC3(id->prod_nr, "LNXAPPL", 7);
	id->prod_fn = myhdr->applid;
	id->record_nr = myhdr->record_num;
	id->version_nr = myhdr->version;
	id->release_nr = myhdr->release;
	id->mod_lvl = myhdr->mod_level;
	rc = FUNC0(parm_list, id, fcn,
			  (void *) buffer, myhdr->datalen);
	if (rc <= 0)
		goto out;
	FUNC4("Writing monitor data failed with rc=%i\n", rc);
	rc = (rc == 5) ? -EPERM : -EINVAL;
out:
	FUNC1(id);
	FUNC1(parm_list);
	return rc;
}