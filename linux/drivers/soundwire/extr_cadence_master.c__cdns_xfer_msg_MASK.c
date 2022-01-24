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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sdw_msg {int dev_num; scalar_t__ flags; int* buf; int ssp_sync; scalar_t__ len; int /*<<< orphan*/  addr; } ;
struct sdw_cdns {int msg_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_complete; } ;
typedef  enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;

/* Variables and functions */
 int CDNS_MCP_CMD_BASE ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_COMMAND ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_DEV_ADDR ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_REG_ADDR_L ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_SSP_TAG ; 
 scalar_t__ CDNS_MCP_CMD_WORD_LEN ; 
 int CDNS_MCP_FIFOLEVEL ; 
 int /*<<< orphan*/  CDNS_TX_TIMEOUT ; 
 int SDW_CMD_OK ; 
 int SDW_CMD_TIMEOUT ; 
 scalar_t__ SDW_MSG_FLAG_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdw_cdns*,struct sdw_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_cdns*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum sdw_command_response
FUNC6(struct sdw_cdns *cdns, struct sdw_msg *msg, int cmd,
	       int offset, int count, bool defer)
{
	unsigned long time;
	u32 base, i, data;
	u16 addr;

	/* Program the watermark level for RX FIFO */
	if (cdns->msg_count != count) {
		FUNC2(cdns, CDNS_MCP_FIFOLEVEL, count);
		cdns->msg_count = count;
	}

	base = CDNS_MCP_CMD_BASE;
	addr = msg->addr;

	for (i = 0; i < count; i++) {
		data = msg->dev_num << FUNC0(CDNS_MCP_CMD_DEV_ADDR);
		data |= cmd << FUNC0(CDNS_MCP_CMD_COMMAND);
		data |= addr++  << FUNC0(CDNS_MCP_CMD_REG_ADDR_L);

		if (msg->flags == SDW_MSG_FLAG_WRITE)
			data |= msg->buf[i + offset];

		data |= msg->ssp_sync << FUNC0(CDNS_MCP_CMD_SSP_TAG);
		FUNC2(cdns, base, data);
		base += CDNS_MCP_CMD_WORD_LEN;
	}

	if (defer)
		return SDW_CMD_OK;

	/* wait for timeout or response */
	time = FUNC5(&cdns->tx_complete,
					   FUNC4(CDNS_TX_TIMEOUT));
	if (!time) {
		FUNC3(cdns->dev, "IO transfer timed out\n");
		msg->len = 0;
		return SDW_CMD_TIMEOUT;
	}

	return FUNC1(cdns, msg, count, offset);
}