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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct port100 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT100_FRAME_HEADER_LEN ; 
 int /*<<< orphan*/  PORT100_FRAME_TAIL_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct port100 *dev, u8 cmd_code,
				    struct sk_buff *skb)
{
	/* payload is already there, just update datalen */
	int payload_len = skb->len;

	FUNC3(skb, PORT100_FRAME_HEADER_LEN);
	FUNC4(skb, PORT100_FRAME_TAIL_LEN);

	FUNC1(skb->data, cmd_code);
	FUNC2(skb->data, payload_len);
	FUNC0(skb->data);
}