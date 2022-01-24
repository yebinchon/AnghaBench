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
typedef  int u32 ;
struct iscsi_tpg_np {struct iscsi_portal_group* tpg; struct iscsi_np* tpg_np; } ;
struct iscsi_portal_group {int dummy; } ;
struct iscsi_np {int /*<<< orphan*/  np_sockaddr; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
typedef  enum iscsit_transport_type { ____Placeholder_iscsit_transport_type } iscsit_transport_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct iscsi_tpg_np*) ; 
 int FUNC1 (struct iscsi_tpg_np*) ; 
 scalar_t__ FUNC2 (struct iscsi_portal_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_portal_group*) ; 
 struct iscsi_tpg_np* FUNC4 (struct iscsi_portal_group*,int /*<<< orphan*/ *,struct iscsi_tpg_np*,int) ; 
 int FUNC5 (struct iscsi_portal_group*,struct iscsi_tpg_np*) ; 
 struct iscsi_tpg_np* FUNC6 (struct iscsi_tpg_np*,int) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 struct iscsi_tpg_np* FUNC12 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC13(struct config_item *item,
		const char *page, size_t count, enum iscsit_transport_type type,
		const char *mod_name)
{
	struct iscsi_tpg_np *tpg_np = FUNC12(item);
	struct iscsi_np *np;
	struct iscsi_portal_group *tpg;
	struct iscsi_tpg_np *tpg_np_new = NULL;
	u32 op;
	int rc;

	rc = FUNC7(page, 0, &op);
	if (rc)
		return rc;
	if ((op != 1) && (op != 0)) {
		FUNC8("Illegal value for tpg_enable: %u\n", op);
		return -EINVAL;
	}
	np = tpg_np->tpg_np;
	if (!np) {
		FUNC8("Unable to locate struct iscsi_np from"
				" struct iscsi_tpg_np\n");
		return -EINVAL;
	}

	tpg = tpg_np->tpg;
	if (FUNC2(tpg) < 0)
		return -EINVAL;

	if (op) {
		if (FUNC11(mod_name)) {
			rc = FUNC10(mod_name);
			if (rc != 0) {
				FUNC9("Unable to request_module for %s\n",
					mod_name);
				rc = 0;
			}
		}

		tpg_np_new = FUNC4(tpg,
					&np->np_sockaddr, tpg_np, type);
		if (FUNC0(tpg_np_new)) {
			rc = FUNC1(tpg_np_new);
			goto out;
		}
	} else {
		tpg_np_new = FUNC6(tpg_np, type);
		if (tpg_np_new) {
			rc = FUNC5(tpg, tpg_np_new);
			if (rc < 0)
				goto out;
		}
	}

	FUNC3(tpg);
	return count;
out:
	FUNC3(tpg);
	return rc;
}