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
struct rtw_netdev_priv_indicator {int sizeof_priv; int /*<<< orphan*/  priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct rtw_netdev_priv_indicator* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

struct net_device *FUNC4(int sizeof_priv)
{
	struct net_device *pnetdev;
	struct rtw_netdev_priv_indicator *pnpi;

	pnetdev = FUNC0(sizeof(struct rtw_netdev_priv_indicator), 4);
	if (!pnetdev)
		goto RETURN;

	pnpi = FUNC2(pnetdev);

	pnpi->priv = FUNC3(sizeof_priv);
	if (!pnpi->priv) {
		FUNC1(pnetdev);
		pnetdev = NULL;
		goto RETURN;
	}

	pnpi->sizeof_priv = sizeof_priv;
RETURN:
	return pnetdev;
}