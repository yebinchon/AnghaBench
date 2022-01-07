
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {void** response_buf; } ;


 int CDNS_MCP_CMD_BASE ;
 scalar_t__ CDNS_MCP_CMD_WORD_LEN ;
 int CDNS_MCP_FIFOSTAT ;
 int CDNS_MCP_RX_FIFO_AVAIL ;
 void* cdns_readl (struct sdw_cdns*,int) ;

__attribute__((used)) static void cdns_read_response(struct sdw_cdns *cdns)
{
 u32 num_resp, cmd_base;
 int i;

 num_resp = cdns_readl(cdns, CDNS_MCP_FIFOSTAT);
 num_resp &= CDNS_MCP_RX_FIFO_AVAIL;

 cmd_base = CDNS_MCP_CMD_BASE;

 for (i = 0; i < num_resp; i++) {
  cdns->response_buf[i] = cdns_readl(cdns, cmd_base);
  cmd_base += CDNS_MCP_CMD_WORD_LEN;
 }
}
