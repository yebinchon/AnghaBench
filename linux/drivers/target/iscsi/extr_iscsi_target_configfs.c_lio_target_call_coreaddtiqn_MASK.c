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
struct target_fabric_configfs {int dummy; } ;
struct se_wwn {int dummy; } ;
struct iscsi_tiqn {char const* tiqn; struct se_wwn tiqn_wwn; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 struct se_wwn* FUNC0 (struct iscsi_tiqn*) ; 
 scalar_t__ FUNC1 (struct iscsi_tiqn*) ; 
 struct iscsi_tiqn* FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static struct se_wwn *FUNC4(
	struct target_fabric_configfs *tf,
	struct config_group *group,
	const char *name)
{
	struct iscsi_tiqn *tiqn;

	tiqn = FUNC2((unsigned char *)name);
	if (FUNC1(tiqn))
		return FUNC0(tiqn);

	FUNC3("LIO_Target_ConfigFS: REGISTER -> %s\n", tiqn->tiqn);
	FUNC3("LIO_Target_ConfigFS: REGISTER -> Allocated Node:"
			" %s\n", name);
	return &tiqn->tiqn_wwn;
}