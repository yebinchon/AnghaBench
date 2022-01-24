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
struct xlr_net_priv {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAX_FRIN_SPILL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct xlr_net_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlr_net_priv*,void*) ; 
 void* FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	void *skb_data;
	struct xlr_net_priv *priv = FUNC1(ndev);
	int i;

	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
		skb_data = FUNC3();
		if (!skb_data)
			return -ENOMEM;
		FUNC2(priv, skb_data);
	}
	FUNC0(ndev, "Rx ring setup done\n");
	return 0;
}