
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_port {int cap_adap; } ;


 int ENXIO ;
 int TB_CFG_PORT ;
 int TB_PCI_EN ;
 int tb_port_write (struct tb_port*,int*,int ,int ,int) ;

int tb_pci_port_enable(struct tb_port *port, bool enable)
{
 u32 word = enable ? TB_PCI_EN : 0x0;
 if (!port->cap_adap)
  return -ENXIO;
 return tb_port_write(port, &word, TB_CFG_PORT, port->cap_adap, 1);
}
