
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_port {int cap_adap; } ;


 int ARRAY_SIZE (int*) ;
 int TB_CFG_PORT ;
 int TB_DP_AUX_EN ;
 int TB_DP_VIDEO_EN ;
 scalar_t__ tb_port_read (struct tb_port*,int*,int ,int ,int ) ;

bool tb_dp_port_is_enabled(struct tb_port *port)
{
 u32 data[2];

 if (tb_port_read(port, data, TB_CFG_PORT, port->cap_adap,
    ARRAY_SIZE(data)))
  return 0;

 return !!(data[0] & (TB_DP_VIDEO_EN | TB_DP_AUX_EN));
}
