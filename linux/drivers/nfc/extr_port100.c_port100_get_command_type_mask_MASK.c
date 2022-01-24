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
typedef  scalar_t__ u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct port100 {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PORT100_CMD_GET_COMMAND_TYPE ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct port100*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static u64 FUNC6(struct port100 *dev)
{
	struct sk_buff *skb;
	struct sk_buff *resp;
	u64 mask;

	skb = FUNC4(dev, 0);
	if (!skb)
		return -ENOMEM;

	resp = FUNC5(dev, PORT100_CMD_GET_COMMAND_TYPE, skb);
	if (FUNC0(resp))
		return FUNC1(resp);

	if (resp->len < 8)
		mask = 0;
	else
		mask = FUNC2(*(__be64 *)resp->data);

	FUNC3(resp);

	return mask;
}