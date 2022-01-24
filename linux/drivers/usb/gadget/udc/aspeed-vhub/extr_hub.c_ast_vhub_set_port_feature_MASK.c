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
typedef  size_t u8 ;
typedef  int u16 ;
struct ast_vhub_port {int status; int /*<<< orphan*/  change; int /*<<< orphan*/  dev; } ;
struct ast_vhub_ep {struct ast_vhub* vhub; } ;
struct ast_vhub {struct ast_vhub_port* ports; } ;
typedef  enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;

/* Variables and functions */
 size_t AST_VHUB_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*) ; 
#define  USB_PORT_FEAT_INDICATOR 132 
#define  USB_PORT_FEAT_POWER 131 
#define  USB_PORT_FEAT_RESET 130 
#define  USB_PORT_FEAT_SUSPEND 129 
#define  USB_PORT_FEAT_TEST 128 
 int USB_PORT_STAT_CONNECTION ; 
 int /*<<< orphan*/  USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_ENABLE ; 
 int /*<<< orphan*/  USB_PORT_STAT_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_vhub*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_vhub*,size_t) ; 
 int std_req_complete ; 
 int std_req_stall ; 

__attribute__((used)) static enum std_req_rc FUNC5(struct ast_vhub_ep *ep,
						 u8 port, u16 feat)
{
	struct ast_vhub *vhub = ep->vhub;
	struct ast_vhub_port *p;

	if (port == 0 || port > AST_VHUB_NUM_PORTS)
		return std_req_stall;
	port--;
	p = &vhub->ports[port];

	switch(feat) {
	case USB_PORT_FEAT_SUSPEND:
		if (!(p->status & USB_PORT_STAT_ENABLE))
			return std_req_complete;
		FUNC1(vhub, port,
					  0, USB_PORT_STAT_SUSPEND,
					  false);
		FUNC2(&p->dev);
		return std_req_complete;
	case USB_PORT_FEAT_RESET:
		FUNC0(ep, "Port reset !\n");
		FUNC3(vhub, port);
		return std_req_complete;
	case USB_PORT_FEAT_POWER:
		/*
		 * On Power-on, we mark the connected flag changed,
		 * if there's a connected device, some hosts will
		 * otherwise fail to detect it.
		 */
		if (p->status & USB_PORT_STAT_CONNECTION) {
			p->change |= USB_PORT_STAT_C_CONNECTION;
			FUNC4(vhub, port);
		}
		return std_req_complete;
	case USB_PORT_FEAT_TEST:
	case USB_PORT_FEAT_INDICATOR:
		/* We don't do anything with these */
		return std_req_complete;
	}
	return std_req_stall;
}