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
typedef  int u32 ;
struct wilc_cfg_rsp {scalar_t__ type; scalar_t__ seq_no; } ;
struct wilc {scalar_t__ cfg_seq_no; int /*<<< orphan*/  cfg_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_HDR_OFFSET ; 
 int IS_MANAGMEMENT ; 
 scalar_t__ WILC_CFG_RSP ; 
 scalar_t__ WILC_CFG_RSP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*,int /*<<< orphan*/ *,int,struct wilc_cfg_rsp*) ; 

__attribute__((used)) static void FUNC6(struct wilc *wilc, u8 *buffer, int size)
{
	int offset = 0;
	u32 header;
	u32 pkt_len, pkt_offset, tp_len;
	int is_cfg_packet;
	u8 *buff_ptr;

	do {
		buff_ptr = buffer + offset;
		header = FUNC1(buff_ptr);

		is_cfg_packet = (header >> 31) & 0x1;
		pkt_offset = (header >> 22) & 0x1ff;
		tp_len = (header >> 11) & 0x7ff;
		pkt_len = header & 0x7ff;

		if (pkt_len == 0 || tp_len == 0)
			break;

		if (pkt_offset & IS_MANAGMEMENT) {
			buff_ptr += HOST_HDR_OFFSET;
			FUNC4(wilc, buff_ptr, pkt_len);
		} else {
			if (!is_cfg_packet) {
				if (pkt_len > 0) {
					FUNC2(wilc, buff_ptr,
							  pkt_len, pkt_offset);
				}
			} else {
				struct wilc_cfg_rsp rsp;

				buff_ptr += pkt_offset;

				FUNC5(wilc, buff_ptr,
							  pkt_len,
							  &rsp);
				if (rsp.type == WILC_CFG_RSP) {
					if (wilc->cfg_seq_no == rsp.seq_no)
						FUNC0(&wilc->cfg_event);
				} else if (rsp.type == WILC_CFG_RSP_STATUS) {
					FUNC3(wilc);
				}
			}
		}
		offset += tp_len;
		if (offset >= size)
			break;
	} while (1);
}