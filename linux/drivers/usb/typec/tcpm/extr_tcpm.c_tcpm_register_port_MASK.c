#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct typec_altmode_desc {scalar_t__ svid; } ;
struct typec_altmode {int /*<<< orphan*/ * ops; } ;
struct TYPE_5__ {int revision; int pd_revision; int /*<<< orphan*/  type; int /*<<< orphan*/  port_type_set; int /*<<< orphan*/  try_role; int /*<<< orphan*/  vconn_set; int /*<<< orphan*/  pr_set; int /*<<< orphan*/  dr_set; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  prefer_role; } ;
struct TYPE_4__ {int /*<<< orphan*/ * identity; } ;
struct tcpm_port {int /*<<< orphan*/  wq; struct typec_altmode* role_sw; int /*<<< orphan*/  lock; struct typec_altmode** port_altmode; struct typec_altmode* typec_port; TYPE_2__ typec_caps; struct device* dev; int /*<<< orphan*/  port_type; int /*<<< orphan*/  partner_ident; TYPE_1__ partner_desc; int /*<<< orphan*/  try_role; int /*<<< orphan*/  pps_complete; int /*<<< orphan*/  swap_complete; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  pd_event_lock; int /*<<< orphan*/  event_work; int /*<<< orphan*/  vdm_state_machine; int /*<<< orphan*/  state_machine; int /*<<< orphan*/  swap_lock; struct tcpc_dev* tcpc; } ;
struct tcpc_dev {TYPE_3__* config; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  pd_transmit; int /*<<< orphan*/  set_roles; int /*<<< orphan*/  set_pd_rx; int /*<<< orphan*/  set_vbus; int /*<<< orphan*/  set_vconn; int /*<<< orphan*/  set_polarity; int /*<<< orphan*/  get_cc; int /*<<< orphan*/  set_cc; int /*<<< orphan*/  get_vbus; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct typec_altmode_desc* alt_modes; int /*<<< orphan*/  try_role_hw; } ;

/* Variables and functions */
 int FUNC0 (struct typec_altmode**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct tcpm_port* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct typec_altmode*) ; 
 int FUNC5 (struct typec_altmode*) ; 
 int /*<<< orphan*/  TYPEC_NO_PREFERRED_ROLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct tcpm_port* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcpm_altmode_ops ; 
 int FUNC16 (struct tcpm_port*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC18 (struct tcpm_port*) ; 
 int /*<<< orphan*/  tcpm_dr_set ; 
 int FUNC19 (struct tcpm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC21 (struct tcpm_port*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  tcpm_pd_event_handler ; 
 int /*<<< orphan*/  tcpm_port_type_set ; 
 int /*<<< orphan*/  tcpm_pr_set ; 
 int /*<<< orphan*/  tcpm_state_machine_work ; 
 int /*<<< orphan*/  tcpm_try_role ; 
 int /*<<< orphan*/  tcpm_vconn_set ; 
 int /*<<< orphan*/  FUNC22 (struct typec_altmode*,struct tcpm_port*) ; 
 struct typec_altmode* FUNC23 (struct typec_altmode*,struct typec_altmode_desc const*) ; 
 struct typec_altmode* FUNC24 (struct device*,TYPE_2__*) ; 
 struct typec_altmode* FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct typec_altmode*) ; 
 int /*<<< orphan*/  vdm_state_machine_work ; 

struct tcpm_port *FUNC27(struct device *dev, struct tcpc_dev *tcpc)
{
	struct tcpm_port *port;
	int i, err;

	if (!dev || !tcpc ||
	    !tcpc->get_vbus || !tcpc->set_cc || !tcpc->get_cc ||
	    !tcpc->set_polarity || !tcpc->set_vconn || !tcpc->set_vbus ||
	    !tcpc->set_pd_rx || !tcpc->set_roles || !tcpc->pd_transmit)
		return FUNC1(-EINVAL);

	port = FUNC9(dev, sizeof(*port), GFP_KERNEL);
	if (!port)
		return FUNC1(-ENOMEM);

	port->dev = dev;
	port->tcpc = tcpc;

	FUNC12(&port->lock);
	FUNC12(&port->swap_lock);

	port->wq = FUNC6(FUNC8(dev));
	if (!port->wq)
		return FUNC1(-ENOMEM);
	FUNC2(&port->state_machine, tcpm_state_machine_work);
	FUNC2(&port->vdm_state_machine, vdm_state_machine_work);
	FUNC3(&port->event_work, tcpm_pd_event_handler);

	FUNC15(&port->pd_event_lock);

	FUNC11(&port->tx_complete);
	FUNC11(&port->swap_complete);
	FUNC11(&port->pps_complete);
	FUNC18(port);

	err = FUNC19(port, tcpc->fwnode);
	if ((err < 0) && tcpc->config)
		err = FUNC16(port, tcpc->config);
	if (err < 0)
		goto out_destroy_wq;

	if (!tcpc->config || !tcpc->config->try_role_hw)
		port->try_role = port->typec_caps.prefer_role;
	else
		port->try_role = TYPEC_NO_PREFERRED_ROLE;

	port->typec_caps.fwnode = tcpc->fwnode;
	port->typec_caps.revision = 0x0120;	/* Type-C spec release 1.2 */
	port->typec_caps.pd_revision = 0x0300;	/* USB-PD spec release 3.0 */
	port->typec_caps.dr_set = tcpm_dr_set;
	port->typec_caps.pr_set = tcpm_pr_set;
	port->typec_caps.vconn_set = tcpm_vconn_set;
	port->typec_caps.try_role = tcpm_try_role;
	port->typec_caps.port_type_set = tcpm_port_type_set;

	port->partner_desc.identity = &port->partner_ident;
	port->port_type = port->typec_caps.type;

	port->role_sw = FUNC25(port->dev);
	if (FUNC4(port->role_sw)) {
		err = FUNC5(port->role_sw);
		goto out_destroy_wq;
	}

	err = FUNC10(port);
	if (err)
		goto out_role_sw_put;

	port->typec_port = FUNC24(port->dev, &port->typec_caps);
	if (FUNC4(port->typec_port)) {
		err = FUNC5(port->typec_port);
		goto out_role_sw_put;
	}

	if (tcpc->config && tcpc->config->alt_modes) {
		const struct typec_altmode_desc *paltmode = tcpc->config->alt_modes;

		i = 0;
		while (paltmode->svid && i < FUNC0(port->port_altmode)) {
			struct typec_altmode *alt;

			alt = FUNC23(port->typec_port,
							  paltmode);
			if (FUNC4(alt)) {
				FUNC21(port,
					 "%s: failed to register port alternate mode 0x%x",
					 FUNC8(dev), paltmode->svid);
				break;
			}
			FUNC22(alt, port);
			alt->ops = &tcpm_altmode_ops;
			port->port_altmode[i] = alt;
			i++;
			paltmode++;
		}
	}

	FUNC13(&port->lock);
	FUNC20(port);
	FUNC14(&port->lock);

	FUNC21(port, "%s: registered", FUNC8(dev));
	return port;

out_role_sw_put:
	FUNC26(port->role_sw);
out_destroy_wq:
	FUNC17(port);
	FUNC7(port->wq);
	return FUNC1(err);
}