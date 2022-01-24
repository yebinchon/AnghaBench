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
struct r8192_priv {int /*<<< orphan*/  chan; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *dev)
{

	struct r8192_priv *priv = FUNC1(dev);

	FUNC0(COMP_CH, "==> SwChnlCallback819xUsbWorkItem(), chan:%d\n",
		 priv->chan);


	FUNC2(dev, priv->chan);

	FUNC0(COMP_CH, "<== SwChnlCallback819xUsbWorkItem()\n");
}