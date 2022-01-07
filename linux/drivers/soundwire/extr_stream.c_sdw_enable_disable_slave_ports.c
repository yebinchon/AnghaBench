
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdw_transport_params {int port_num; } ;
struct sdw_slave_runtime {TYPE_2__* slave; } ;
struct sdw_port_runtime {int ch_mask; int num; struct sdw_transport_params transport_params; } ;
struct TYPE_3__ {scalar_t__ next_bank; } ;
struct sdw_bus {TYPE_1__ params; } ;
struct TYPE_4__ {int dev; } ;


 int SDW_DPN_CHANNELEN_B0 (int ) ;
 int SDW_DPN_CHANNELEN_B1 (int ) ;
 int dev_err (int *,char*,int,int ) ;
 int sdw_update (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static int sdw_enable_disable_slave_ports(struct sdw_bus *bus,
       struct sdw_slave_runtime *s_rt,
       struct sdw_port_runtime *p_rt,
       bool en)
{
 struct sdw_transport_params *t_params = &p_rt->transport_params;
 u32 addr;
 int ret;

 if (bus->params.next_bank)
  addr = SDW_DPN_CHANNELEN_B1(p_rt->num);
 else
  addr = SDW_DPN_CHANNELEN_B0(p_rt->num);





 if (en)
  ret = sdw_update(s_rt->slave, addr, 0xFF, p_rt->ch_mask);
 else
  ret = sdw_update(s_rt->slave, addr, 0xFF, 0x0);

 if (ret < 0)
  dev_err(&s_rt->slave->dev,
   "Slave chn_en reg write failed:%d port:%d\n",
   ret, t_params->port_num);

 return ret;
}
