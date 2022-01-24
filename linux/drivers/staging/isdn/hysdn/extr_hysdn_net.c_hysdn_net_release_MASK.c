#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_local {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int debug_flags; struct net_device* netif; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int LOG_NET_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct net_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

int
FUNC5(hysdn_card *card)
{
	struct net_device *dev = card->netif;

	if (!dev)
		return (0);	/* non existing */

	card->netif = NULL;	/* clear out pointer */
	FUNC3(dev);

	FUNC0((struct net_local *) dev);	/* empty buffers */

	FUNC4(dev);	/* release the device */
	FUNC1(dev);	/* release the memory allocated */
	if (card->debug_flags & LOG_NET_INIT)
		FUNC2(card, "network device deleted");

	return (0);		/* always successful */
}