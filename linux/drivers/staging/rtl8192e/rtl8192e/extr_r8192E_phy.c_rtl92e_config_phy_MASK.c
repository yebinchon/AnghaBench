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
struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  RF_8225 131 
#define  RF_8256 130 
#define  RF_8258 129 
#define  RF_PSEUDO_11N 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

bool FUNC3(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	bool rtStatus = true;

	switch (priv->rf_chip) {
	case RF_8225:
		break;
	case RF_8256:
		rtStatus = FUNC1(dev);
		break;

	case RF_8258:
		break;
	case RF_PSEUDO_11N:
		break;

	default:
		FUNC0(dev, "Invalid RF Chip ID.\n");
		break;
	}
	return rtStatus;
}