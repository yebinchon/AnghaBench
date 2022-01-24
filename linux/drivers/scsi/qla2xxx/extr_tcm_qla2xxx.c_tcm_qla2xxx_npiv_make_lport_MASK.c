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
typedef  void* u64 ;
struct se_wwn {int dummy; } ;
struct tcm_qla2xxx_lport {int /*<<< orphan*/  lport_fcport_map; int /*<<< orphan*/  lport_loopid_map; struct se_wwn lport_wwn; int /*<<< orphan*/  lport_naa_name; void* lport_npiv_wwnn; void* lport_npiv_wwpn; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct se_wwn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcm_qla2xxx_lport*) ; 
 struct tcm_qla2xxx_lport* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct tcm_qla2xxx_lport*,void*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*) ; 
 int FUNC10 (struct tcm_qla2xxx_lport*) ; 
 int /*<<< orphan*/  tcm_qla2xxx_lport_register_npiv_cb ; 
 scalar_t__ FUNC11 (char*,scalar_t__,void**,void**) ; 
 scalar_t__ FUNC12 (char*,void**,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct se_wwn *FUNC14(
	struct target_fabric_configfs *tf,
	struct config_group *group,
	const char *name)
{
	struct tcm_qla2xxx_lport *lport;
	u64 phys_wwpn, npiv_wwpn, npiv_wwnn;
	char *p, tmp[128];
	int ret;

	FUNC6(tmp, 128, "%s", name);

	p = FUNC8(tmp, '@');
	if (!p) {
		FUNC4("Unable to locate NPIV '@' separator\n");
		return FUNC0(-EINVAL);
	}
	*p++ = '\0';

	if (FUNC12(tmp, &phys_wwpn, 1) < 0)
		return FUNC0(-EINVAL);

	if (FUNC11(p, FUNC9(p)+1,
				       &npiv_wwpn, &npiv_wwnn) < 0)
		return FUNC0(-EINVAL);

	lport = FUNC3(sizeof(struct tcm_qla2xxx_lport), GFP_KERNEL);
	if (!lport) {
		FUNC4("Unable to allocate struct tcm_qla2xxx_lport for NPIV\n");
		return FUNC0(-ENOMEM);
	}
	lport->lport_npiv_wwpn = npiv_wwpn;
	lport->lport_npiv_wwnn = npiv_wwnn;
	FUNC7(lport->lport_naa_name, "naa.%016llx", (unsigned long long) npiv_wwpn);

	ret = FUNC10(lport);
	if (ret != 0)
		goto out;

	ret = FUNC5(lport, phys_wwpn, npiv_wwpn, npiv_wwnn,
				 tcm_qla2xxx_lport_register_npiv_cb);
	if (ret != 0)
		goto out_lport;

	return &lport->lport_wwn;
out_lport:
	FUNC13(lport->lport_loopid_map);
	FUNC1(&lport->lport_fcport_map);
out:
	FUNC2(lport);
	return FUNC0(ret);
}