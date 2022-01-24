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
struct net_device {int min_mtu; int ifindex; int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mtu; } ;
struct gsm_netconfig {scalar_t__ protocol; int adaption; char* if_name; } ;
struct gsm_mux_net {int /*<<< orphan*/  ref; struct gsm_dlci* dlci; } ;
struct gsm_dlci {int adaption; int prev_adaption; struct net_device* net; int /*<<< orphan*/  data; int /*<<< orphan*/  prev_data; TYPE_1__* gsm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  gsm_mux_net_init ; 
 int /*<<< orphan*/  gsm_mux_rx_netchar ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct gsm_mux_net* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gsm_dlci *dlci, struct gsm_netconfig *nc)
{
	char *netname;
	int retval = 0;
	struct net_device *net;
	struct gsm_mux_net *mux_net;

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	/* Already in a non tty mode */
	if (dlci->adaption > 2)
		return -EBUSY;

	if (nc->protocol != FUNC3(ETH_P_IP))
		return -EPROTONOSUPPORT;

	if (nc->adaption != 3 && nc->adaption != 4)
		return -EPROTONOSUPPORT;

	FUNC6("create network interface");

	netname = "gsm%d";
	if (nc->if_name[0] != '\0')
		netname = nc->if_name;
	net = FUNC0(sizeof(struct gsm_mux_net), netname,
			   NET_NAME_UNKNOWN, gsm_mux_net_init);
	if (!net) {
		FUNC7("alloc_netdev failed");
		return -ENOMEM;
	}
	net->mtu = dlci->gsm->mtu;
	net->min_mtu = 8;
	net->max_mtu = dlci->gsm->mtu;
	mux_net = FUNC5(net);
	mux_net->dlci = dlci;
	FUNC4(&mux_net->ref);
	FUNC9(nc->if_name, net->name, IFNAMSIZ); /* return net name */

	/* reconfigure dlci for network */
	dlci->prev_adaption = dlci->adaption;
	dlci->prev_data = dlci->data;
	dlci->adaption = nc->adaption;
	dlci->data = gsm_mux_rx_netchar;
	dlci->net = net;

	FUNC6("register netdev");
	retval = FUNC8(net);
	if (retval) {
		FUNC7("network register fail %d\n", retval);
		FUNC2(dlci);
		return retval;
	}
	return net->ifindex;	/* return network index */
}