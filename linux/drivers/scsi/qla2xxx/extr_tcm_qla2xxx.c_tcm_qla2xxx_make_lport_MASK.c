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
typedef  scalar_t__ u64 ;
struct se_wwn {int dummy; } ;
struct tcm_qla2xxx_lport {int /*<<< orphan*/  lport_fcport_map; int /*<<< orphan*/  lport_loopid_map; struct se_wwn lport_wwn; int /*<<< orphan*/  lport_naa_name; int /*<<< orphan*/ * lport_name; scalar_t__ lport_wwpn; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct se_wwn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCM_QLA2XXX_NAMELEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcm_qla2xxx_lport*) ; 
 struct tcm_qla2xxx_lport* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct tcm_qla2xxx_lport*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct tcm_qla2xxx_lport*) ; 
 int /*<<< orphan*/  tcm_qla2xxx_lport_register_cb ; 
 scalar_t__ FUNC9 (char const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct se_wwn *FUNC11(
	struct target_fabric_configfs *tf,
	struct config_group *group,
	const char *name)
{
	struct tcm_qla2xxx_lport *lport;
	u64 wwpn;
	int ret = -ENODEV;

	if (FUNC9(name, &wwpn, 1) < 0)
		return FUNC0(-EINVAL);

	lport = FUNC3(sizeof(struct tcm_qla2xxx_lport), GFP_KERNEL);
	if (!lport) {
		FUNC4("Unable to allocate struct tcm_qla2xxx_lport\n");
		return FUNC0(-ENOMEM);
	}
	lport->lport_wwpn = wwpn;
	FUNC7(&lport->lport_name[0], TCM_QLA2XXX_NAMELEN,
				wwpn);
	FUNC6(lport->lport_naa_name, "naa.%016llx", (unsigned long long) wwpn);

	ret = FUNC8(lport);
	if (ret != 0)
		goto out;

	ret = FUNC5(lport, wwpn, 0, 0,
				 tcm_qla2xxx_lport_register_cb);
	if (ret != 0)
		goto out_lport;

	return &lport->lport_wwn;
out_lport:
	FUNC10(lport->lport_loopid_map);
	FUNC1(&lport->lport_fcport_map);
out:
	FUNC2(lport);
	return FUNC0(ret);
}