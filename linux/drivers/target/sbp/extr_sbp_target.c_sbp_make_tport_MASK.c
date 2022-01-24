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
typedef  int /*<<< orphan*/  u64 ;
struct target_fabric_configfs {int dummy; } ;
struct se_wwn {int dummy; } ;
struct sbp_tport {struct se_wwn tport_wwn; int /*<<< orphan*/  tport_name; int /*<<< orphan*/  guid; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct se_wwn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SBP_NAMELEN ; 
 struct sbp_tport* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct se_wwn *FUNC4(
		struct target_fabric_configfs *tf,
		struct config_group *group,
		const char *name)
{
	struct sbp_tport *tport;
	u64 guid = 0;

	if (FUNC3(name, &guid) < 0)
		return FUNC0(-EINVAL);

	tport = FUNC1(sizeof(*tport), GFP_KERNEL);
	if (!tport)
		return FUNC0(-ENOMEM);

	tport->guid = guid;
	FUNC2(tport->tport_name, SBP_NAMELEN, guid);

	return &tport->tport_wwn;
}