#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * type; int /*<<< orphan*/  fwnode; struct device* parent; int /*<<< orphan*/  class; } ;
struct typec_port {void* pwr_role; int id; int port_type; void* prefer_role; TYPE_1__ dev; int /*<<< orphan*/  mux; int /*<<< orphan*/  sw; struct typec_capability const* cap; int /*<<< orphan*/  port_type_lock; int /*<<< orphan*/  mode_ids; void* data_role; void* vconn_role; } ;
struct typec_capability {int type; void* prefer_role; int data; int /*<<< orphan*/  fwnode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct typec_port* FUNC0 (int /*<<< orphan*/ ) ; 
 struct typec_port* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* TYPEC_DEVICE ; 
 void* TYPEC_HOST ; 
 void* TYPEC_NO_PREFERRED_ROLE ; 
#define  TYPEC_PORT_DFP 133 
#define  TYPEC_PORT_DRD 132 
#define  TYPEC_PORT_DRP 131 
#define  TYPEC_PORT_SNK 130 
#define  TYPEC_PORT_SRC 129 
#define  TYPEC_PORT_UFP 128 
 void* TYPEC_SINK ; 
 void* TYPEC_SOURCE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct typec_port*) ; 
 struct typec_port* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  typec_class ; 
 int /*<<< orphan*/  typec_index_ida ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  typec_port_dev_type ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

struct typec_port *FUNC15(struct device *parent,
				       const struct typec_capability *cap)
{
	struct typec_port *port;
	int ret;
	int id;

	port = FUNC10(sizeof(*port), GFP_KERNEL);
	if (!port)
		return FUNC1(-ENOMEM);

	id = FUNC8(&typec_index_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		FUNC9(port);
		return FUNC1(id);
	}

	switch (cap->type) {
	case TYPEC_PORT_SRC:
		port->pwr_role = TYPEC_SOURCE;
		port->vconn_role = TYPEC_SOURCE;
		break;
	case TYPEC_PORT_SNK:
		port->pwr_role = TYPEC_SINK;
		port->vconn_role = TYPEC_SINK;
		break;
	case TYPEC_PORT_DRP:
		if (cap->prefer_role != TYPEC_NO_PREFERRED_ROLE)
			port->pwr_role = cap->prefer_role;
		else
			port->pwr_role = TYPEC_SINK;
		break;
	}

	switch (cap->data) {
	case TYPEC_PORT_DFP:
		port->data_role = TYPEC_HOST;
		break;
	case TYPEC_PORT_UFP:
		port->data_role = TYPEC_DEVICE;
		break;
	case TYPEC_PORT_DRD:
		if (cap->prefer_role == TYPEC_SOURCE)
			port->data_role = TYPEC_HOST;
		else
			port->data_role = TYPEC_DEVICE;
		break;
	}

	FUNC7(&port->mode_ids);
	FUNC11(&port->port_type_lock);

	port->id = id;
	port->cap = cap;
	port->port_type = cap->type;
	port->prefer_role = cap->prefer_role;

	FUNC6(&port->dev);
	port->dev.class = typec_class;
	port->dev.parent = parent;
	port->dev.fwnode = cap->fwnode;
	port->dev.type = &typec_port_dev_type;
	FUNC4(&port->dev, "port%d", id);

	port->sw = FUNC14(&port->dev);
	if (FUNC2(port->sw)) {
		FUNC12(&port->dev);
		return FUNC0(port->sw);
	}

	port->mux = FUNC13(&port->dev, NULL);
	if (FUNC2(port->mux)) {
		FUNC12(&port->dev);
		return FUNC0(port->mux);
	}

	ret = FUNC5(&port->dev);
	if (ret) {
		FUNC3(parent, "failed to register port (%d)\n", ret);
		FUNC12(&port->dev);
		return FUNC1(ret);
	}

	return port;
}