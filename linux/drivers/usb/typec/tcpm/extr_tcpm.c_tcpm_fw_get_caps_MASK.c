#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int data; int type; int /*<<< orphan*/  prefer_role; } ;
struct tcpm_port {scalar_t__ port_type; int operating_snk_mw; int /*<<< orphan*/  self_powered; void* nr_snk_pdo; int /*<<< orphan*/  snk_pdo; TYPE_1__ typec_caps; void* nr_src_pdo; int /*<<< orphan*/  src_pdo; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PDO_MAX_OBJECTS ; 
 scalar_t__ TYPEC_PORT_SNK ; 
 scalar_t__ TYPEC_PORT_SRC ; 
 int FUNC0 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*,char*) ; 
 int FUNC2 (struct fwnode_handle*,char*,char const**) ; 
 scalar_t__ FUNC3 (struct fwnode_handle*,char*,int*) ; 
 int FUNC4 (struct fwnode_handle*,char*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tcpm_port*,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(struct tcpm_port *port,
			    struct fwnode_handle *fwnode)
{
	const char *cap_str;
	int ret;
	u32 mw;

	if (!fwnode)
		return -EINVAL;

	/* USB data support is optional */
	ret = FUNC2(fwnode, "data-role", &cap_str);
	if (ret == 0) {
		ret = FUNC7(cap_str);
		if (ret < 0)
			return ret;
		port->typec_caps.data = ret;
	}

	ret = FUNC2(fwnode, "power-role", &cap_str);
	if (ret < 0)
		return ret;

	ret = FUNC8(cap_str);
	if (ret < 0)
		return ret;
	port->typec_caps.type = ret;
	port->port_type = port->typec_caps.type;

	if (port->port_type == TYPEC_PORT_SNK)
		goto sink;

	/* Get source pdos */
	ret = FUNC0(fwnode, "source-pdos");
	if (ret <= 0)
		return -EINVAL;

	port->nr_src_pdo = FUNC5(ret, PDO_MAX_OBJECTS);
	ret = FUNC4(fwnode, "source-pdos",
					     port->src_pdo, port->nr_src_pdo);
	if ((ret < 0) || FUNC6(port, port->src_pdo,
					    port->nr_src_pdo))
		return -EINVAL;

	if (port->port_type == TYPEC_PORT_SRC)
		return 0;

	/* Get the preferred power role for DRP */
	ret = FUNC2(fwnode, "try-power-role", &cap_str);
	if (ret < 0)
		return ret;

	port->typec_caps.prefer_role = FUNC9(cap_str);
	if (port->typec_caps.prefer_role < 0)
		return -EINVAL;
sink:
	/* Get sink pdos */
	ret = FUNC0(fwnode, "sink-pdos");
	if (ret <= 0)
		return -EINVAL;

	port->nr_snk_pdo = FUNC5(ret, PDO_MAX_OBJECTS);
	ret = FUNC4(fwnode, "sink-pdos",
					     port->snk_pdo, port->nr_snk_pdo);
	if ((ret < 0) || FUNC6(port, port->snk_pdo,
					    port->nr_snk_pdo))
		return -EINVAL;

	if (FUNC3(fwnode, "op-sink-microwatt", &mw) < 0)
		return -EINVAL;
	port->operating_snk_mw = mw / 1000;

	port->self_powered = FUNC1(fwnode, "self-powered");

	return 0;
}