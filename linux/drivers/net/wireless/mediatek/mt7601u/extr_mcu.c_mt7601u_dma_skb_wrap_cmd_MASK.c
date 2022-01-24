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
struct sk_buff {int dummy; } ;
typedef  enum mcu_cmd { ____Placeholder_mcu_cmd } mcu_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_TX_PORT ; 
 int /*<<< orphan*/  DMA_COMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_TXD_CMD_INFO_SEQ ; 
 int /*<<< orphan*/  MT_TXD_CMD_INFO_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb,
					    u8 seq, enum mcu_cmd cmd)
{
	FUNC1(FUNC2(skb, CPU_TX_PORT, DMA_COMMAND,
				     FUNC0(MT_TXD_CMD_INFO_SEQ, seq) |
				     FUNC0(MT_TXD_CMD_INFO_TYPE, cmd)));
}