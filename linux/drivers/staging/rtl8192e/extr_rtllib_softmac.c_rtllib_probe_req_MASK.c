#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ duration_id; int /*<<< orphan*/  frame_ctl; } ;
struct rtllib_probe_request {TYPE_2__ header; } ;
struct TYPE_6__ {unsigned int ssid_len; int /*<<< orphan*/  ssid; } ;
struct rtllib_device {TYPE_3__ current_network; TYPE_1__* dev; scalar_t__ tx_headroom; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFIE_TYPE_SSID ; 
 int /*<<< orphan*/  RTLLIB_STYPE_PROBE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*,int /*<<< orphan*/ **) ; 
 unsigned int FUNC7 (struct rtllib_device*) ; 
 void* FUNC8 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static inline struct sk_buff *FUNC10(struct rtllib_device *ieee)
{
	unsigned int len, rate_len;
	u8 *tag;
	struct sk_buff *skb;
	struct rtllib_probe_request *req;

	len = ieee->current_network.ssid_len;

	rate_len = FUNC7(ieee);

	skb = FUNC1(sizeof(struct rtllib_probe_request) +
			    2 + len + rate_len + ieee->tx_headroom);

	if (!skb)
		return NULL;

	FUNC9(skb, ieee->tx_headroom);

	req = FUNC8(skb, sizeof(struct rtllib_probe_request));
	req->header.frame_ctl = FUNC0(RTLLIB_STYPE_PROBE_REQ);
	req->header.duration_id = 0;

	FUNC2(req->header.addr1);
	FUNC3(req->header.addr2, ieee->dev->dev_addr);
	FUNC2(req->header.addr3);

	tag = FUNC8(skb, len + 2 + rate_len);

	*tag++ = MFIE_TYPE_SSID;
	*tag++ = len;
	FUNC4(tag, ieee->current_network.ssid, len);
	tag += len;

	FUNC5(ieee, &tag);
	FUNC6(ieee, &tag);

	return skb;
}