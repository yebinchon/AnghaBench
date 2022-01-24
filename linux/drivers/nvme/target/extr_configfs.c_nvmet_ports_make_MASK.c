#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct config_group {int dummy; } ;
struct TYPE_4__ {int grpid; struct config_group group; struct nvmet_port* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  treq; int /*<<< orphan*/  portid; } ;
struct nvmet_port {int inline_data_size; struct config_group group; struct config_group ana_groups_group; TYPE_2__ ana_default_group; struct config_group referrals_group; struct config_group subsys_group; TYPE_1__ disc_addr; int /*<<< orphan*/  referrals; int /*<<< orphan*/  subsystems; int /*<<< orphan*/  entry; int /*<<< orphan*/  global_entry; int /*<<< orphan*/ * ana_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NVMET_DEFAULT_ANA_GRPID ; 
 int NVMET_MAX_ANAGRPS ; 
 int /*<<< orphan*/  NVME_ANA_INACCESSIBLE ; 
 int /*<<< orphan*/  NVME_ANA_OPTIMIZED ; 
 int /*<<< orphan*/  NVMF_TREQ_DISABLE_SQFLOW ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvmet_port*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvmet_port* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_ana_group_type ; 
 int /*<<< orphan*/  nvmet_ana_groups_type ; 
 int /*<<< orphan*/  nvmet_port_subsys_type ; 
 int /*<<< orphan*/  nvmet_port_type ; 
 int /*<<< orphan*/  nvmet_ports_list ; 
 int /*<<< orphan*/  nvmet_referrals_type ; 

__attribute__((used)) static struct config_group *FUNC11(struct config_group *group,
		const char *name)
{
	struct nvmet_port *port;
	u16 portid;
	u32 i;

	if (FUNC8(name, 0, &portid))
		return FUNC0(-EINVAL);

	port = FUNC9(sizeof(*port), GFP_KERNEL);
	if (!port)
		return FUNC0(-ENOMEM);

	port->ana_state = FUNC6(NVMET_MAX_ANAGRPS + 1,
			sizeof(*port->ana_state), GFP_KERNEL);
	if (!port->ana_state) {
		FUNC7(port);
		return FUNC0(-ENOMEM);
	}

	for (i = 1; i <= NVMET_MAX_ANAGRPS; i++) {
		if (i == NVMET_DEFAULT_ANA_GRPID)
			port->ana_state[1] = NVME_ANA_OPTIMIZED;
		else
			port->ana_state[i] = NVME_ANA_INACCESSIBLE;
	}

	FUNC10(&port->global_entry, &nvmet_ports_list);

	FUNC1(&port->entry);
	FUNC1(&port->subsystems);
	FUNC1(&port->referrals);
	port->inline_data_size = -1;	/* < 0 == let the transport choose */

	port->disc_addr.portid = FUNC5(portid);
	port->disc_addr.treq = NVMF_TREQ_DISABLE_SQFLOW;
	FUNC3(&port->group, name, &nvmet_port_type);

	FUNC3(&port->subsys_group,
			"subsystems", &nvmet_port_subsys_type);
	FUNC4(&port->subsys_group, &port->group);

	FUNC3(&port->referrals_group,
			"referrals", &nvmet_referrals_type);
	FUNC4(&port->referrals_group, &port->group);

	FUNC3(&port->ana_groups_group,
			"ana_groups", &nvmet_ana_groups_type);
	FUNC4(&port->ana_groups_group, &port->group);

	port->ana_default_group.port = port;
	port->ana_default_group.grpid = NVMET_DEFAULT_ANA_GRPID;
	FUNC3(&port->ana_default_group.group,
			FUNC2(NVMET_DEFAULT_ANA_GRPID),
			&nvmet_ana_group_type);
	FUNC4(&port->ana_default_group.group,
			&port->ana_groups_group);

	return &port->group;
}