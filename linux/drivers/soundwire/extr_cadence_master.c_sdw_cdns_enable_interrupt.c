
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_cdns {int dev; } ;


 int CDNS_MCP_CONFIG_UPDATE ;
 int CDNS_MCP_CONFIG_UPDATE_BIT ;
 int _cdns_enable_interrupt (struct sdw_cdns*) ;
 int cdns_clear_bit (struct sdw_cdns*,int ,int ) ;
 int dev_err (int ,char*) ;

int sdw_cdns_enable_interrupt(struct sdw_cdns *cdns)
{
 int ret;

 _cdns_enable_interrupt(cdns);
 ret = cdns_clear_bit(cdns, CDNS_MCP_CONFIG_UPDATE,
        CDNS_MCP_CONFIG_UPDATE_BIT);
 if (ret < 0)
  dev_err(cdns->dev, "Config update timedout\n");

 return ret;
}
