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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct rtllib_device {int /*<<< orphan*/  dev; } ;
struct ba_record {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_ADDBARSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC1 (struct rtllib_device*,int /*<<< orphan*/ *,struct ba_record*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct rtllib_device*) ; 

__attribute__((used)) static void FUNC3(struct rtllib_device *ieee, u8 *dst,
				 struct ba_record *pBA, u16 StatusCode)
{
	struct sk_buff *skb;

	skb = FUNC1(ieee, dst, pBA, StatusCode, ACT_ADDBARSP);
	if (skb)
		FUNC2(skb, ieee);
	else
		FUNC0(ieee->dev, "Failed to generate ADDBARsp packet.\n");
}