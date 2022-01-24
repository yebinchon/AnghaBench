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
struct sk_buff {scalar_t__ data; } ;
struct port100 {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PORT100_CMD_GET_FIRMWARE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct port100*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC5(struct port100 *dev)
{
	struct sk_buff *skb;
	struct sk_buff *resp;
	u16 fw_ver;

	skb = FUNC3(dev, 0);
	if (!skb)
		return 0;

	resp = FUNC4(dev, PORT100_CMD_GET_FIRMWARE_VERSION,
				     skb);
	if (FUNC0(resp))
		return 0;

	fw_ver = FUNC2(*(__le16 *)resp->data);

	FUNC1(resp);

	return fw_ver;
}