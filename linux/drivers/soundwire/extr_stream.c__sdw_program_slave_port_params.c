
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdw_transport_params {int offset2; int blk_pkg_mode; int sample_interval; int hstart; int hstop; int port_num; } ;
struct sdw_slave {int dummy; } ;
struct TYPE_2__ {scalar_t__ next_bank; } ;
struct sdw_bus {int dev; TYPE_1__ params; } ;
typedef enum sdw_dpn_type { ____Placeholder_sdw_dpn_type } sdw_dpn_type ;


 int SDW_DPN_BLOCKCTRL3_B0 (int ) ;
 int SDW_DPN_BLOCKCTRL3_B1 (int ) ;
 int SDW_DPN_FULL ;
 int SDW_DPN_HCTRL_B0 (int ) ;
 int SDW_DPN_HCTRL_B1 (int ) ;
 int SDW_DPN_HCTRL_HSTART ;
 int SDW_DPN_OFFSETCTRL2_B0 (int ) ;
 int SDW_DPN_OFFSETCTRL2_B1 (int ) ;
 int SDW_DPN_SAMPLECTRL2_B0 (int ) ;
 int SDW_DPN_SAMPLECTRL2_B1 (int ) ;
 int SDW_DPN_SAMPLECTRL_HIGH ;
 int SDW_REG_SHIFT (int) ;
 int dev_err (int ,char*) ;
 int sdw_write (struct sdw_slave*,int ,int) ;

__attribute__((used)) static int _sdw_program_slave_port_params(struct sdw_bus *bus,
       struct sdw_slave *slave,
       struct sdw_transport_params *t_params,
       enum sdw_dpn_type type)
{
 u32 addr1, addr2, addr3, addr4;
 int ret;
 u16 wbuf;

 if (bus->params.next_bank) {
  addr1 = SDW_DPN_OFFSETCTRL2_B1(t_params->port_num);
  addr2 = SDW_DPN_BLOCKCTRL3_B1(t_params->port_num);
  addr3 = SDW_DPN_SAMPLECTRL2_B1(t_params->port_num);
  addr4 = SDW_DPN_HCTRL_B1(t_params->port_num);
 } else {
  addr1 = SDW_DPN_OFFSETCTRL2_B0(t_params->port_num);
  addr2 = SDW_DPN_BLOCKCTRL3_B0(t_params->port_num);
  addr3 = SDW_DPN_SAMPLECTRL2_B0(t_params->port_num);
  addr4 = SDW_DPN_HCTRL_B0(t_params->port_num);
 }


 ret = sdw_write(slave, addr1, t_params->offset2);
 if (ret < 0) {
  dev_err(bus->dev, "DPN_OffsetCtrl2 register write failed\n");
  return ret;
 }


 ret = sdw_write(slave, addr2, t_params->blk_pkg_mode);
 if (ret < 0) {
  dev_err(bus->dev, "DPN_BlockCtrl3 register write failed\n");
  return ret;
 }






 if (type != SDW_DPN_FULL)
  return ret;


 wbuf = (t_params->sample_interval - 1);
 wbuf &= SDW_DPN_SAMPLECTRL_HIGH;
 wbuf >>= SDW_REG_SHIFT(SDW_DPN_SAMPLECTRL_HIGH);

 ret = sdw_write(slave, addr3, wbuf);
 if (ret < 0) {
  dev_err(bus->dev, "DPN_SampleCtrl2 register write failed\n");
  return ret;
 }


 wbuf = t_params->hstart;
 wbuf <<= SDW_REG_SHIFT(SDW_DPN_HCTRL_HSTART);
 wbuf |= t_params->hstop;

 ret = sdw_write(slave, addr4, wbuf);
 if (ret < 0)
  dev_err(bus->dev, "DPN_HCtrl register write failed\n");

 return ret;
}
