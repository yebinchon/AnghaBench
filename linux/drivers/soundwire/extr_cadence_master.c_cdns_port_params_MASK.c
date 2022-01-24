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
struct sdw_port_params {int bps; int flow_mode; int data_mode; int /*<<< orphan*/  num; } ;
struct sdw_cdns {int dummy; } ;
struct sdw_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDNS_DPN_CONFIG_PORT_DAT ; 
 int /*<<< orphan*/  CDNS_DPN_CONFIG_PORT_FLOW ; 
 int /*<<< orphan*/  CDNS_DPN_CONFIG_WL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sdw_cdns* FUNC3 (struct sdw_bus*) ; 
 int FUNC4 (struct sdw_cdns*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sdw_cdns*,int,int) ; 

__attribute__((used)) static int FUNC6(struct sdw_bus *bus,
			    struct sdw_port_params *p_params, unsigned int bank)
{
	struct sdw_cdns *cdns = FUNC3(bus);
	int dpn_config = 0, dpn_config_off;

	if (bank)
		dpn_config_off = FUNC1(p_params->num);
	else
		dpn_config_off = FUNC0(p_params->num);

	dpn_config = FUNC4(cdns, dpn_config_off);

	dpn_config |= ((p_params->bps - 1) <<
				FUNC2(CDNS_DPN_CONFIG_WL));
	dpn_config |= (p_params->flow_mode <<
				FUNC2(CDNS_DPN_CONFIG_PORT_FLOW));
	dpn_config |= (p_params->data_mode <<
				FUNC2(CDNS_DPN_CONFIG_PORT_DAT));

	FUNC5(cdns, dpn_config_off, dpn_config);

	return 0;
}