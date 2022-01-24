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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int* data; } ;
struct port100 {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PORT100_CMD_SET_COMMAND_TYPE ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct port100*,int) ; 
 struct sk_buff* FUNC4 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct port100 *dev, u8 command_type)
{
	struct sk_buff *skb;
	struct sk_buff *resp;
	int rc;

	skb = FUNC3(dev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC5(skb, command_type);

	resp = FUNC4(dev, PORT100_CMD_SET_COMMAND_TYPE, skb);
	if (FUNC0(resp))
		return FUNC1(resp);

	rc = resp->data[0];

	FUNC2(resp);

	return rc;
}