
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tb_port {int cap_adap; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int TB_CFG_PORT ;
 unsigned int TB_DP_AUX_RX_HOPID_MASK ;
 unsigned int TB_DP_AUX_RX_HOPID_SHIFT ;
 unsigned int TB_DP_AUX_TX_HOPID_MASK ;
 unsigned int TB_DP_VIDEO_HOPID_MASK ;
 unsigned int TB_DP_VIDEO_HOPID_SHIFT ;
 int tb_port_read (struct tb_port*,unsigned int*,int ,int ,int ) ;
 int tb_port_write (struct tb_port*,unsigned int*,int ,int ,int ) ;

int tb_dp_port_set_hops(struct tb_port *port, unsigned int video,
   unsigned int aux_tx, unsigned int aux_rx)
{
 u32 data[2];
 int ret;

 ret = tb_port_read(port, data, TB_CFG_PORT, port->cap_adap,
      ARRAY_SIZE(data));
 if (ret)
  return ret;

 data[0] &= ~TB_DP_VIDEO_HOPID_MASK;
 data[1] &= ~(TB_DP_AUX_RX_HOPID_MASK | TB_DP_AUX_TX_HOPID_MASK);

 data[0] |= (video << TB_DP_VIDEO_HOPID_SHIFT) & TB_DP_VIDEO_HOPID_MASK;
 data[1] |= aux_tx & TB_DP_AUX_TX_HOPID_MASK;
 data[1] |= (aux_rx << TB_DP_AUX_RX_HOPID_SHIFT) & TB_DP_AUX_RX_HOPID_MASK;

 return tb_port_write(port, data, TB_CFG_PORT, port->cap_adap,
        ARRAY_SIZE(data));
}
