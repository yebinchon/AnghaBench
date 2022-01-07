
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_ethernet {int phy_mode; struct device_node* of_node; } ;
struct device_node {int dummy; } ;


 int CVMX_ASXX_RX_CLK_SETX (int,int) ;
 int CVMX_ASXX_TX_CLK_SETX (int,int) ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static void cvm_set_rgmii_delay(struct octeon_ethernet *priv, int iface,
    int port)
{
 struct device_node *np = priv->of_node;
 u32 delay_value;
 bool rx_delay;
 bool tx_delay;




 rx_delay = 1;
 tx_delay = 1;

 if (!of_property_read_u32(np, "rx-delay", &delay_value)) {
  cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(port, iface), delay_value);
  rx_delay = delay_value > 0;
 }
 if (!of_property_read_u32(np, "tx-delay", &delay_value)) {
  cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(port, iface), delay_value);
  tx_delay = delay_value > 0;
 }

 if (!rx_delay && !tx_delay)
  priv->phy_mode = PHY_INTERFACE_MODE_RGMII_ID;
 else if (!rx_delay)
  priv->phy_mode = PHY_INTERFACE_MODE_RGMII_RXID;
 else if (!tx_delay)
  priv->phy_mode = PHY_INTERFACE_MODE_RGMII_TXID;
 else
  priv->phy_mode = PHY_INTERFACE_MODE_RGMII;
}
