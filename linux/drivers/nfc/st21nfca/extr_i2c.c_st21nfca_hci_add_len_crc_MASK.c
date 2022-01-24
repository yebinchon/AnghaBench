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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	u16 crc;
	u8 tmp;

	*(u8 *)FUNC1(skb, 1) = 0;

	crc = FUNC0(0xffff, skb->data, skb->len);
	crc = ~crc;

	tmp = crc & 0x00ff;
	FUNC2(skb, tmp);

	tmp = (crc >> 8) & 0x00ff;
	FUNC2(skb, tmp);
}