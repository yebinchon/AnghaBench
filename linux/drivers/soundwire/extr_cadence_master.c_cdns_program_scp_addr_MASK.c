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
struct sdw_msg {int dev_num; int addr_page1; int addr_page2; scalar_t__ len; } ;
struct sdw_cdns {scalar_t__ msg_count; int* response_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_complete; } ;
typedef  enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;

/* Variables and functions */
 int CDNS_MCP_CMD_BASE ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_COMMAND ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_DEV_ADDR ; 
 int /*<<< orphan*/  CDNS_MCP_CMD_REG_ADDR_L ; 
 scalar_t__ CDNS_MCP_CMD_WORD_LEN ; 
 int CDNS_MCP_FIFOLEVEL ; 
 int CDNS_MCP_RESP_ACK ; 
 int CDNS_MCP_RESP_NACK ; 
 scalar_t__ CDNS_SCP_RX_FIFOLEVEL ; 
 int /*<<< orphan*/  CDNS_TX_TIMEOUT ; 
 int SDW_CMD_FAIL ; 
 int SDW_CMD_IGNORED ; 
 int SDW_CMD_OK ; 
 int SDW_CMD_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDW_SCP_ADDRPAGE1 ; 
 int SDW_SCP_ADDRPAGE2 ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_cdns*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum sdw_command_response
FUNC7(struct sdw_cdns *cdns, struct sdw_msg *msg)
{
	int nack = 0, no_ack = 0;
	unsigned long time;
	u32 data[2], base;
	int i;

	/* Program the watermark level for RX FIFO */
	if (cdns->msg_count != CDNS_SCP_RX_FIFOLEVEL) {
		FUNC1(cdns, CDNS_MCP_FIFOLEVEL, CDNS_SCP_RX_FIFOLEVEL);
		cdns->msg_count = CDNS_SCP_RX_FIFOLEVEL;
	}

	data[0] = msg->dev_num << FUNC0(CDNS_MCP_CMD_DEV_ADDR);
	data[0] |= 0x3 << FUNC0(CDNS_MCP_CMD_COMMAND);
	data[1] = data[0];

	data[0] |= SDW_SCP_ADDRPAGE1 << FUNC0(CDNS_MCP_CMD_REG_ADDR_L);
	data[1] |= SDW_SCP_ADDRPAGE2 << FUNC0(CDNS_MCP_CMD_REG_ADDR_L);

	data[0] |= msg->addr_page1;
	data[1] |= msg->addr_page2;

	base = CDNS_MCP_CMD_BASE;
	FUNC1(cdns, base, data[0]);
	base += CDNS_MCP_CMD_WORD_LEN;
	FUNC1(cdns, base, data[1]);

	time = FUNC6(&cdns->tx_complete,
					   FUNC5(CDNS_TX_TIMEOUT));
	if (!time) {
		FUNC3(cdns->dev, "SCP Msg trf timed out\n");
		msg->len = 0;
		return SDW_CMD_TIMEOUT;
	}

	/* check response the writes */
	for (i = 0; i < 2; i++) {
		if (!(cdns->response_buf[i] & CDNS_MCP_RESP_ACK)) {
			no_ack = 1;
			FUNC3(cdns->dev, "Program SCP Ack not received\n");
			if (cdns->response_buf[i] & CDNS_MCP_RESP_NACK) {
				nack = 1;
				FUNC3(cdns->dev, "Program SCP NACK received\n");
			}
		}
	}

	/* For NACK, NO ack, don't return err if we are in Broadcast mode */
	if (nack) {
		FUNC4(cdns->dev,
				    "SCP_addrpage NACKed for Slave %d\n", msg->dev_num);
		return SDW_CMD_FAIL;
	} else if (no_ack) {
		FUNC2(cdns->dev,
				    "SCP_addrpage ignored for Slave %d\n", msg->dev_num);
		return SDW_CMD_IGNORED;
	}

	return SDW_CMD_OK;
}