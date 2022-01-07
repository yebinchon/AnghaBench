
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb {int dummy; } ;
struct icm {int upstream_port; } ;


 int PHY_PORT_CS1 ;
 int PHY_PORT_CS1_LINK_DISABLE ;
 int PHY_PORT_CS1_LINK_STATE_MASK ;
 int PHY_PORT_CS1_LINK_STATE_SHIFT ;
 int TB_CFG_PORT ;
 int TB_PORT_UP ;
 int pcie2cio_read (struct icm*,int ,int,int ,int*) ;
 int pcie2cio_write (struct icm*,int ,int,int ,int) ;
 struct icm* tb_priv (struct tb*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int icm_reset_phy_port(struct tb *tb, int phy_port)
{
 struct icm *icm = tb_priv(tb);
 u32 state0, state1;
 int port0, port1;
 u32 val0, val1;
 int ret;

 if (!icm->upstream_port)
  return 0;

 if (phy_port) {
  port0 = 3;
  port1 = 4;
 } else {
  port0 = 1;
  port1 = 2;
 }





 ret = pcie2cio_read(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, &val0);
 if (ret)
  return ret;
 ret = pcie2cio_read(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, &val1);
 if (ret)
  return ret;

 state0 = val0 & PHY_PORT_CS1_LINK_STATE_MASK;
 state0 >>= PHY_PORT_CS1_LINK_STATE_SHIFT;
 state1 = val1 & PHY_PORT_CS1_LINK_STATE_MASK;
 state1 >>= PHY_PORT_CS1_LINK_STATE_SHIFT;


 if (state0 != TB_PORT_UP || state1 != TB_PORT_UP)
  return 0;

 val0 |= PHY_PORT_CS1_LINK_DISABLE;
 ret = pcie2cio_write(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, val0);
 if (ret)
  return ret;

 val1 |= PHY_PORT_CS1_LINK_DISABLE;
 ret = pcie2cio_write(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, val1);
 if (ret)
  return ret;


 usleep_range(10, 100);

 ret = pcie2cio_read(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, &val0);
 if (ret)
  return ret;
 ret = pcie2cio_read(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, &val1);
 if (ret)
  return ret;

 val0 &= ~PHY_PORT_CS1_LINK_DISABLE;
 ret = pcie2cio_write(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, val0);
 if (ret)
  return ret;

 val1 &= ~PHY_PORT_CS1_LINK_DISABLE;
 return pcie2cio_write(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, val1);
}
