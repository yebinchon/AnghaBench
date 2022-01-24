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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int H2C_TX_CMD_HDR_LEN ; 
 int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,size_t) ; 
 size_t* FUNC4 (struct sk_buff*,size_t) ; 

__attribute__((used)) static u32 FUNC5(struct sk_buff *skb, u32 h2cbufferlen,
				u32 cmd_num, u32 *pelement_id, u32 *pcmd_len,
				u8 **pcmb_buffer, u8 *cmd_start_seq)
{
	u32 totallen = 0, len = 0, tx_desclen = 0;
	u32 pre_continueoffset = 0;
	u8 *ph2c_buffer;
	u8 i = 0;

	do {
		/* 8 - Byte alignment */
		len = H2C_TX_CMD_HDR_LEN + FUNC0(pcmd_len[i], 8);

		/* Buffer length is not enough */
		if (h2cbufferlen < totallen + len + tx_desclen)
			break;

		/* Clear content */
		ph2c_buffer = FUNC4(skb, (u32)len);
		FUNC3((ph2c_buffer + totallen + tx_desclen), 0, len);

		/* CMD len */
		FUNC1((ph2c_buffer + totallen + tx_desclen),
				      0, 16, pcmd_len[i]);

		/* CMD ID */
		FUNC1((ph2c_buffer + totallen + tx_desclen),
				      16, 8, pelement_id[i]);

		/* CMD Sequence */
		*cmd_start_seq = *cmd_start_seq % 0x80;
		FUNC1((ph2c_buffer + totallen + tx_desclen),
				      24, 7, *cmd_start_seq);
		++*cmd_start_seq;

		/* Copy memory */
		FUNC2((ph2c_buffer + totallen + tx_desclen +
			H2C_TX_CMD_HDR_LEN), pcmb_buffer[i], pcmd_len[i]);

		/* CMD continue */
		/* set the continue in prevoius cmd. */
		if (i < cmd_num - 1)
			FUNC1((ph2c_buffer + pre_continueoffset),
					      31, 1, 1);

		pre_continueoffset = totallen;

		totallen += len;
	} while (++i < cmd_num);

	return totallen;
}