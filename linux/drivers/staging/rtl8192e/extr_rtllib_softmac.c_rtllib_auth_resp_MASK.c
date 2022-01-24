#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; } ;
struct rtllib_device {TYPE_1__* dev; int /*<<< orphan*/  tx_headroom; } ;
struct TYPE_4__ {void* frame_ctl; int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; } ;
struct rtllib_authentication {TYPE_2__ header; void* algorithm; void* transaction; void* status; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int RTLLIB_STYPE_AUTH ; 
 int WLAN_AUTH_OPEN ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rtllib_authentication* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct rtllib_device *ieee, int status,
				 u8 *dest)
{
	struct sk_buff *skb = NULL;
	struct rtllib_authentication *auth;
	int len = ieee->tx_headroom + sizeof(struct rtllib_authentication) + 1;

	skb = FUNC1(len);
	if (!skb)
		return NULL;

	skb->len = sizeof(struct rtllib_authentication);

	FUNC4(skb, ieee->tx_headroom);

	auth = FUNC3(skb, sizeof(struct rtllib_authentication));

	auth->status = FUNC0(status);
	auth->transaction = FUNC0(2);
	auth->algorithm = FUNC0(WLAN_AUTH_OPEN);

	FUNC2(auth->header.addr3, ieee->dev->dev_addr);
	FUNC2(auth->header.addr2, ieee->dev->dev_addr);
	FUNC2(auth->header.addr1, dest);
	auth->header.frame_ctl = FUNC0(RTLLIB_STYPE_AUTH);
	return skb;


}