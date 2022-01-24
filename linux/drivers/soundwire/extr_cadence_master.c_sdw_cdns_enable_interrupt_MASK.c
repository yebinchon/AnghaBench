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
struct sdw_cdns {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_MCP_CONFIG_UPDATE ; 
 int /*<<< orphan*/  CDNS_MCP_CONFIG_UPDATE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdw_cdns*) ; 
 int FUNC1 (struct sdw_cdns*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct sdw_cdns *cdns)
{
	int ret;

	FUNC0(cdns);
	ret = FUNC1(cdns, CDNS_MCP_CONFIG_UPDATE,
			     CDNS_MCP_CONFIG_UPDATE_BIT);
	if (ret < 0)
		FUNC2(cdns->dev, "Config update timedout\n");

	return ret;
}