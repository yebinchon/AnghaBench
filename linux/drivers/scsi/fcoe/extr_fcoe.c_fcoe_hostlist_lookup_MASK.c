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
struct net_device {int dummy; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 struct fcoe_interface* FUNC0 (struct net_device const*) ; 
 struct fcoe_ctlr* FUNC1 (struct fcoe_interface*) ; 

__attribute__((used)) static struct fc_lport *FUNC2(const struct net_device *netdev)
{
	struct fcoe_ctlr *ctlr;
	struct fcoe_interface *fcoe;

	fcoe = FUNC0(netdev);
	ctlr = FUNC1(fcoe);
	return (fcoe) ? ctlr->lp : NULL;
}