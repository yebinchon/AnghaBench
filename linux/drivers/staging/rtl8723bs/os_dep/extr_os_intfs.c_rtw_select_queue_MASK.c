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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {size_t priority; } ;
struct net_device {int dummy; } ;
struct mlme_priv {scalar_t__ acm_mask; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/ * rtw_1d_to_queue ; 
 size_t FUNC1 (struct sk_buff*) ; 
 struct adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u16 FUNC3(struct net_device *dev, struct sk_buff *skb,
			    struct net_device *sb_dev)
{
	struct adapter	*padapter = FUNC2(dev);
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	skb->priority = FUNC1(skb);

	if (pmlmepriv->acm_mask != 0)
		skb->priority = FUNC0(pmlmepriv->acm_mask, skb->priority);

	return rtw_1d_to_queue[skb->priority];
}